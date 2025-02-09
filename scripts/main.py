import tensorflow as tf
import numpy as np
import math
import os

# Define winning combinations for Tic Tac Toe
winning_combinations = [
    (0, 1, 2),
    (3, 4, 5),
    (6, 7, 8),
    (0, 3, 6),
    (1, 4, 7),
    (2, 5, 8),
    (0, 4, 8),
    (2, 4, 6)
]

def check_winner(board):
    """
    Check if the game has ended.
    Returns (is_terminal, winner) where:
      - winner == 1 if the AI (playing as 1) wins,
      - winner == -1 if the opponent (playing as -1) wins,
      - winner == 0 if the game is a draw,
      - winner is None if the game is still ongoing.
    """
    for (a, b, c) in winning_combinations:
        if board[a] != 0 and board[a] == board[b] == board[c]:
            return True, board[a]
    if 0 not in board:
        return True, 0
    return False, None

def valid_moves(board):
    """Return a list of indices for empty cells."""
    return [i for i, v in enumerate(board) if v == 0]

def minimax(board, player):
    """
    A minimax algorithm for Tic Tac Toe.
    `player` should be 1 for the AI (maximizing) or -1 for the opponent (minimizing).
    
    Returns a tuple (score, best_move) where:
      - score is 1 if the AI wins, -1 if the opponent wins, or 0 for a draw,
      - best_move is the index (0-8) for the optimal move.
    """
    terminal_state, winner = check_winner(board)
    if terminal_state:
        return winner, None

    if player == 1:  # Maximizing: AI's turn
        best_score = -math.inf
        best_move = None
        for move in valid_moves(board):
            board[move] = player
            score, _ = minimax(board, -player)
            board[move] = 0
            if score > best_score:
                best_score = score
                best_move = move
        return best_score, best_move
    else:  # Minimizing: Opponent's turn
        best_score = math.inf
        best_move = None
        for move in valid_moves(board):
            board[move] = player
            score, _ = minimax(board, -player)
            board[move] = 0
            if score < best_score:
                best_score = score
                best_move = move
        return best_score, best_move

def attack_defense_move(board, player):
    """
    Determine the best move based on a strategic heuristic:
      1. If there's an immediate winning move, take it.
      2. If the opponent can win next move, block it.
      3. Take the center if available.
      4. Take a corner if available.
      5. Otherwise, fallback to minimax.
    """
    # 1. Attack: Check for an immediate win.
    for move in valid_moves(board):
        board[move] = player
        terminal, winner = check_winner(board)
        board[move] = 0
        if terminal and winner == player:
            return move

    # 2. Defense: Check if the opponent can win next move and block.
    opponent = -player
    for move in valid_moves(board):
        board[move] = opponent
        terminal, winner = check_winner(board)
        board[move] = 0
        if terminal and winner == opponent:
            return move

    # 3. Take the center if available.
    if board[4] == 0:
        return 4

    # 4. Take one of the corners if available.
    for move in [0, 2, 6, 8]:
        if board[move] == 0:
            return move

    # 5. Fallback to the minimax result.
    _, best_move = minimax(board, player)
    return best_move

def generate_dataset(board, player, dataset):
    """
    Recursively explores game states starting with `board` and `player`.
    When it is the AI's turn (player == 1), records the board state and the optimal strategic move.
    
    `dataset` is a dictionary mapping board states (as a tuple) to the best move index.
    """
    terminal_state, _ = check_winner(board)
    if terminal_state:
        return

    # When AI is to move, use our heuristic (which defends and attacks well) as the label.
    if player == 1:
        best_move = attack_defense_move(board, player)
        board_key = tuple(board)
        if board_key not in dataset:
            dataset[board_key] = best_move

    for move in valid_moves(board):
        board[move] = player
        generate_dataset(board, -player, dataset)
        board[move] = 0

def create_model():
    """
    Builds a simple Keras model which takes a 3x3 board as input and outputs a probability distribution over 9 moves.
    The architecture is kept simple on purpose due to the limited complexity of Tic Tac Toe.
    """
    model = tf.keras.Sequential([
        tf.keras.layers.Flatten(input_shape=(3, 3)),
        tf.keras.layers.Dense(81, activation='relu'),
        tf.keras.layers.Dense(9, activation='softmax')
    ])
    model.compile(optimizer=tf.keras.optimizers.Adam(learning_rate=0.01),
                  loss='categorical_crossentropy',
                  metrics=['accuracy'])
    return model

def main():
    # Generate dataset from the game tree using strategic perfect play.
    initial_board = [0] * 9  # Represent the board as a flat list of 9 cells.
    dataset = {}
    generate_dataset(initial_board, 1, dataset)
    print("Generated dataset with {} samples".format(len(dataset)))

    # Prepare training data:
    # X: Board states reshaped to 3x3 arrays (matching the input expected by AiGameServiceImpl)
    # y: The optimal move (as an integer index between 0 and 8)
    X = []
    y = []
    for board_state, move in dataset.items():
        board_array = np.array(board_state, dtype=np.float32).reshape(3, 3)
        X.append(board_array)
        y.append(move)
    X = np.array(X)
    y = np.array(y)

    # Convert the labels to one-hot encoded vectors
    y_one_hot = tf.keras.utils.to_categorical(y, num_classes=9)

    # Create and train the model
    model = create_model()
    model.summary()
    
    # Train for a sufficient number of epochs. You can adjust epochs and batch_size as needed.
    model.fit(X, y_one_hot, epochs=500, batch_size=16, verbose=2)

    # Convert the Keras model to a TensorFlow Lite model.
    converter = tf.lite.TFLiteConverter.from_keras_model(model)
    tflite_model = converter.convert()

    # Ensure output directory exists.
    output_path = os.path.join("..", "assets", "tflite")
    os.makedirs(output_path, exist_ok=True)
    tflite_file = os.path.join(output_path, "tic_tac_toe_model.tflite")
    
    with open(tflite_file, "wb") as f:
        f.write(tflite_model)
    print("TensorFlow Lite model saved to:", tflite_file)

if __name__ == "__main__":
    main()
