import sys
import os
sys.path.append(os.path.dirname(os.path.dirname(os.path.dirname(__file__))))

from typing import Optional, Tuple
import numpy as np
from scripts.game.tic_tac_toe_game import TicTacToeGame
import random
import math

import tensorflow as tf
from tensorflow.keras import layers, models
import os
from tqdm import tqdm

class TicTacToeScript:
    @staticmethod
    def calculate_difficulty(game_number: int, total_games: int) -> float:
        """Calculates current difficulty (0.4 to 0.95) using a sigmoid function
        Args:
            game_number: Current game number (0 to total_games-1)
            total_games: Total number of games to be played
        Returns: Difficulty value between 0.4 and 0.95
        """
        # Convert game number to a value between -6 and 6 for sigmoid
        x = 12 * (game_number / (total_games - 1)) - 6
        
        # Calculate sigmoid value (0 to 1)
        sigmoid = 1 / (1 + math.exp(-x))
        
        # Scale sigmoid to our desired range (0.4 to 0.95)
        min_difficulty = 0.4
        max_difficulty = 0.95
        difficulty = min_difficulty + (max_difficulty - min_difficulty) * sigmoid
        
        return difficulty

    @staticmethod
    def make_move(board: np.ndarray, game_number: int = 9999, total_games: int = 10000) -> Tuple[Tuple[int, int], bool]:
        """Makes a move for the AI player with scaling difficulty
        Args:
            board: Current game board
            game_number: Current game number (0 to total_games-1)
            total_games: Total number of games to be played
        Returns: ((row, col), is_winning_move)
        """
        # Calculate current difficulty using sigmoid function
        difficulty = TicTacToeScript.calculate_difficulty(game_number, total_games)
        
        # Random move chance based on difficulty (1 - difficulty)
        if random.random() > difficulty:
            empty_cells = [(i, j) for i in range(3) for j in range(3) if board[i][j] == 0]
            if not empty_cells:
                raise Exception('No valid moves available')
            random_move = empty_cells[random.randint(0, len(empty_cells) - 1)]
            return random_move, False

        # Strategic move logic
        player = 1  # Script plays as 1, opponent as -1
        
        # First, try to win
        winning_move = TicTacToeScript.find_winning_move(board, player)
        if winning_move is not None:
            return winning_move, True

        # Then, block opponent from winning
        blocking_move = TicTacToeScript.find_winning_move(board, -player)
        if blocking_move is not None:
            return blocking_move, False

        # Block potential fork moves
        fork_blocking_move = TicTacToeScript.find_fork_blocking_move(board)
        if fork_blocking_move is not None:
            return fork_blocking_move, False

        # Take center if available
        if board[1][1] == 0:
            return (1, 1), False

        # Take opposite corner if opponent has taken a corner
        opposite_corner = TicTacToeScript.find_opposite_corner_move(board)
        if opposite_corner is not None:
            return opposite_corner, False

        # Take any available corner
        corners = [(0, 0), (0, 2), (2, 0), (2, 2)]
        random.shuffle(corners)  # Randomize corner selection
        for corner in corners:
            if board[corner[0]][corner[1]] == 0:
                return corner, False

        # Take any available edge
        edges = [(0, 1), (1, 0), (1, 2), (2, 1)]
        random.shuffle(edges)  # Randomize edge selection
        for edge in edges:
            if board[edge[0]][edge[1]] == 0:
                return edge, False

        raise Exception('No valid moves available')

    @staticmethod
    def find_winning_move(board: np.ndarray, player: int) -> Optional[Tuple[int, int]]:
        """Finds a winning move for the given player"""
        for i in range(3):
            for j in range(3):
                if board[i][j] == 0:
                    # Try the move
                    board[i][j] = player
                    if TicTacToeGame.check_winner(board.tolist()) == player:
                        board[i][j] = 0  # Reset the move
                        return (i, j)
                    board[i][j] = 0  # Reset the move
        return None

    @staticmethod
    def find_opposite_corner_move(board: np.ndarray) -> Optional[Tuple[int, int]]:
        """Finds an opposite corner move if opponent has taken a corner"""
        corner_pairs = {
            (0, 0): (2, 2),
            (0, 2): (2, 0),
            (2, 0): (0, 2),
            (2, 2): (0, 0)
        }
        
        corner_items = list(corner_pairs.items())
        random.shuffle(corner_items)  # Randomize corner pair selection
        
        for corner, opposite in corner_items:
            if board[corner[0]][corner[1]] == -1 and board[opposite[0]][opposite[1]] == 0:
                return opposite
        return None

    @staticmethod
    def find_fork_blocking_move(board: np.ndarray) -> Optional[Tuple[int, int]]:
        """Blocks potential fork moves"""
        corners = [(0, 0), (0, 2), (2, 0), (2, 2)]
        opponent_corners = sum(1 for corner in corners if board[corner[0]][corner[1]] == -1)

        if opponent_corners == 2:
            # If opponent has two corners, take an edge to prevent fork
            edges = [(0, 1), (1, 0), (1, 2), (2, 1)]
            random.shuffle(edges)  # Randomize edge selection
            for edge in edges:
                if board[edge[0]][edge[1]] == 0:
                    return edge
        return None