import os
from models.tic_tac_toe_model import TicTacToeModel
from data.data_generator import DataGenerator
import numpy as np
from tqdm import tqdm
from scripts.game.tic_tac_toe_game import TicTacToeGame
from scripts.game.tic_tac_toe_script import TicTacToeScript

def main():
    print("\n=== Tic Tac Toe AI Model Training ===\n")
    
    output_dir = '../assets/tflite'
    os.makedirs(output_dir, exist_ok=True)
    
    print("Step 1: Generating training data...")
    X_train, y_train = DataGenerator.generate_training_data(num_games=1000)
    
    print("\nStep 2: Preparing data for training...")
    X_train = X_train.reshape(-1, 3, 3, 1)
    print(f"Input shape: {X_train.shape}")
    print(f"Output shape: {y_train.shape}")
    
    print("\nStep 3: Training model...")
    model = train_model(num_games=1000)
    
    print("\nStep 4: Saving model...")
    model_path = os.path.join(output_dir, 'tic_tac_toe_model.tflite')
    model.save_as_tflite(model_path)
    
    print("\n=== Training Complete ===")

def train_model(num_games: int = 1000):
    model = TicTacToeModel()
    script = TicTacToeScript()
    
    print(f"\nTraining AI model over {num_games} games against TicTacToeScript:")
    for game in tqdm(range(num_games)):
        board = np.zeros((3, 3))
        game_over = False
        
        while not game_over:
            # AI's move (player 1)
            legal_moves = TicTacToeGame.get_legal_moves(board)
            if not legal_moves:
                break
                
            # Model's move
            move = model.get_best_move(board, legal_moves)
            TicTacToeGame.make_move(board, move, 1)
            model.record_state(board, move)
            
            # Check if game is over
            winner = TicTacToeGame.check_winner(board)
            if winner is not None:
                game_over = True
                result = 1.0 if winner == 1 else -1.0 if winner == -1 else 0.0
                model.train_on_game_result(result)
                continue
            
            # Script's move (player -1)
            try:
                script_move, is_winning = script.make_move(board, game_number=game, total_games=num_games)
                TicTacToeGame.make_move(board, script_move, -1)
                
                # Check if game is over
                winner = TicTacToeGame.check_winner(board)
                if winner is not None:
                    game_over = True
                    result = 1.0 if winner == 1 else -1.0 if winner == -1 else 0.0
                    model.train_on_game_result(result)
            except Exception:
                # If script can't make a move, end game
                game_over = True
                result = 0.0  # Draw
                model.train_on_game_result(result)
        
        # Print progress every 1000 games
        if (game + 1) % 1000 == 0:
            print(f"\nCompleted {game + 1} games")
            print_game_stats(model, script)
    
    return model

def print_game_stats(model: TicTacToeModel, script: TicTacToeScript, num_test_games: int = 100):
    """Prints statistics about model performance"""
    wins = 0
    losses = 0
    draws = 0
    
    for _ in range(num_test_games):
        board = np.zeros((3, 3))
        game_over = False
        
        while not game_over:
            # AI's move
            legal_moves = TicTacToeGame.get_legal_moves(board)
            if not legal_moves:
                draws += 1
                break
                
            move = model.get_best_move(board, legal_moves)
            TicTacToeGame.make_move(board, move, 1)
            
            winner = TicTacToeGame.check_winner(board)
            if winner is not None:
                if winner == 1:
                    wins += 1
                elif winner == -1:
                    losses += 1
                else:
                    draws += 1
                break
            
            # Script's move
            try:
                script_move, _ = script.make_move(board)
                TicTacToeGame.make_move(board, script_move, -1)
                
                winner = TicTacToeGame.check_winner(board)
                if winner is not None:
                    if winner == 1:
                        wins += 1
                    elif winner == -1:
                        losses += 1
                    else:
                        draws += 1
                    break
            except Exception:
                draws += 1
                break
    
    print(f"Test results over {num_test_games} games:")
    print(f"Wins: {wins} ({wins/num_test_games*100:.1f}%)")
    print(f"Losses: {losses} ({losses/num_test_games*100:.1f}%)")
    print(f"Draws: {draws} ({draws/num_test_games*100:.1f}%)")

if __name__ == "__main__":
    print("=== Training Tic-Tac-Toe AI Model ===")
    model = train_model(num_games=1000)
    
    # Save the trained model
    model.save_model('tic_tac_toe_model.h5')
    print("\nTraining complete! Model saved as 'tic_tac_toe_model.h5'")