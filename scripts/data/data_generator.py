from typing import Tuple, Optional, List
import numpy as np
from tqdm import tqdm
from game.tic_tac_toe_script import TicTacToeScript
from game.tic_tac_toe_game import TicTacToeGame

class DataGenerator:
    @staticmethod
    def generate_training_data(num_games: int = 10000) -> Tuple[np.ndarray, np.ndarray]:
        """Generates training data by playing against TicTacToeScript"""
        X = []
        y = []
        
        print(f"\nGenerating {num_games} training games:")
        for _ in tqdm(range(num_games)):
            game_states, moves = DataGenerator._play_single_game(_, num_games)
            
            # Add all game states and their corresponding moves to training data
            for state, move in zip(game_states, moves):
                X.append(state)
                # Convert move to one-hot encoded target
                target = np.zeros(9)
                target[move[0] * 3 + move[1]] = 1
                y.append(target)
        
        print(f"Generated {len(X)} valid training examples")
        return np.array(X), np.array(y)

    @staticmethod
    def _play_single_game(game_number: int, num_games: int) -> Tuple[List[np.ndarray], List[Tuple[int, int]]]:
        """Plays a single game and returns all game states and corresponding moves"""
        board = np.zeros((3, 3))
        game_states = []
        moves = []
        
        while True:
            # Script's move (player 1)
            try:
                script_move, is_winning = TicTacToeScript.make_move(
                    board,
                    game_number=game_number,  # Current game number
                    total_games=num_games
                )
                
                # Save the current state and the move made
                game_states.append(board.copy())
                moves.append(script_move)
                
                # Make the move
                board[script_move[0]][script_move[1]] = 1
                
                if is_winning or TicTacToeGame.check_winner(board.tolist()) is not None:
                    break
                
                # Check for draw
                if np.count_nonzero(board) == 9:
                    break
                
            except Exception:
                break
            
            # Opponent's move
            empty_cells = [(i, j) for i in range(3) for j in range(3) if board[i][j] == 0]
            if not empty_cells:
                break
                
            # Mix of strategic and random opponent moves
            if np.random.random() < 0.7:  # 70% strategic
                try:
                    opponent_board = -board  # Flip board for opponent perspective
                    opponent_move, _ = TicTacToeScript.make_move(opponent_board)
                    board[opponent_move[0]][opponent_move[1]] = -1
                except Exception:
                    opponent_move = empty_cells[np.random.randint(len(empty_cells))]
                    board[opponent_move[0]][opponent_move[1]] = -1
            else:  # 30% random
                opponent_move = empty_cells[np.random.randint(len(empty_cells))]
                board[opponent_move[0]][opponent_move[1]] = -1
            
            if TicTacToeGame.check_winner(board.tolist()) is not None:
                break
        
        return game_states, moves

    @staticmethod
    def augment_data(X: np.ndarray, y: np.ndarray) -> Tuple[np.ndarray, np.ndarray]:
        """Augments the training data by applying rotations and reflections"""
        X_aug = []
        y_aug = []
        
        for board, move in zip(X, y):
            # Original
            X_aug.append(board)
            y_aug.append(move)
            
            # Rotations
            for k in range(1, 4):
                rotated_board = np.rot90(board, k)
                rotated_move = np.zeros(9)
                move_idx = np.argmax(move)
                row, col = move_idx // 3, move_idx % 3
                
                # Rotate the move coordinates
                for _ in range(k):
                    row, col = col, 2 - row
                
                rotated_move[row * 3 + col] = 1
                X_aug.append(rotated_board)
                y_aug.append(rotated_move)
            
            # Reflections
            flipped_board = np.fliplr(board)
            flipped_move = np.zeros(9)
            move_idx = np.argmax(move)
            row, col = move_idx // 3, move_idx % 3
            flipped_move[row * 3 + (2 - col)] = 1
            X_aug.append(flipped_board)
            y_aug.append(flipped_move)
            
            flipped_board = np.flipud(board)
            flipped_move = np.zeros(9)
            flipped_move[(2 - row) * 3 + col] = 1
            X_aug.append(flipped_board)
            y_aug.append(flipped_move)
        
        return np.array(X_aug), np.array(y_aug)

