import os
from models.tic_tac_toe_model import TicTacToeModel
from data.data_generator import DataGenerator
import numpy as np
from tqdm import tqdm
from scripts.game.tic_tac_toe_game import TicTacToeGame

def main():
    print("\n=== Tic Tac Toe AI Model Training ===\n")
    
    output_dir = '../assets/tflite'
    os.makedirs(output_dir, exist_ok=True)
    
    print("Step 1: Generating training data...")
    X_train, y_train = DataGenerator.generate_training_data(num_games=20000)
    
    print("\nStep 2: Preparing data for training...")
    X_train = X_train.reshape(-1, 3, 3, 1)
    print(f"Input shape: {X_train.shape}")
    print(f"Output shape: {y_train.shape}")
    
    print("\nStep 3: Training model...")
    model = train_model(num_games=20000)
    
    print("\nStep 4: Saving model...")
    model_path = os.path.join(output_dir, 'tic_tac_toe_model.tflite')
    model.save_as_tflite(model_path)
    
    print("\n=== Training Complete ===")

def train_model(num_games: int = 200000):
    model = TicTacToeModel()
    
    for game in tqdm(range(num_games)):
        board = np.zeros((3, 3))
        game_over = False
        
        while not game_over:
            legal_moves = TicTacToeGame.get_legal_moves(board)
            
            if not legal_moves:
                break
                
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
            
            # Opponent's move
            legal_moves = TicTacToeGame.get_legal_moves(board)
            if legal_moves:
                opponent_move = TicTacToeGame.get_opponent_move(board, legal_moves, game)
                TicTacToeGame.make_move(board, opponent_move, -1)
                
                # Check if game is over
                winner = TicTacToeGame.check_winner(board)
                if winner is not None:
                    game_over = True
                    result = 1.0 if winner == 1 else -1.0 if winner == -1 else 0.0
                    model.train_on_game_result(result)
    
    return model

if __name__ == "__main__":
    main()