from typing import Optional, List, Tuple
import numpy as np
import random

class TicTacToeGame:
    @staticmethod
    def check_winner(board: np.ndarray) -> Optional[int]:
        """
        Checks if there is a winner on the board
        Returns:
            1 if player 1 wins
            -1 if player -1 wins
            0 if draw
            None if game is still ongoing
        """
        # Check rows
        for i in range(3):
            if abs(sum(board[i])) == 3:
                return board[i][0]
        
        # Check columns
        for j in range(3):
            if abs(sum(board[:, j])) == 3:
                return board[0][j]
        
        # Check diagonals
        diag1 = sum(board[i][i] for i in range(3))
        diag2 = sum(board[i][2-i] for i in range(3))
        
        if abs(diag1) == 3:
            return board[0][0]
        if abs(diag2) == 3:
            return board[0][2]
        
        # Check for draw (no empty spaces left)
        if not any(0 in row for row in board):
            return 0
            
        # Game is still ongoing
        return None

    @staticmethod
    def get_opponent_move(board: np.ndarray, legal_moves: List[Tuple[int, int]], game_number: int) -> Tuple[int, int]:
        """
        Implements opponent strategy with increasing difficulty
        Args:
            board: Current game board
            legal_moves: List of available moves
            game_number: Current game number for difficulty scaling
        Returns:
            Selected move as (row, col)
        """
        # Try to win
        for move in legal_moves:
            test_board = board.copy()
            test_board[move[0]][move[1]] = -1
            if TicTacToeGame.check_winner(test_board) == -1:
                return move

        # Block opponent from winning
        for move in legal_moves:
            test_board = board.copy()
            test_board[move[0]][move[1]] = 1  # Test opponent's move
            if TicTacToeGame.check_winner(test_board) == 1:
                return move

        # Strategic moves based on difficulty
        if random.random() < 0.7:  # 70% chance of strategic play
            # Take center if available
            if (1, 1) in legal_moves:
                return (1, 1)

            # Take corners
            corners = [(0, 0), (0, 2), (2, 0), (2, 2)]
            available_corners = [move for move in corners if move in legal_moves]
            if available_corners:
                return random.choice(available_corners)

            # Take edges
            edges = [(0, 1), (1, 0), (1, 2), (2, 1)]
            available_edges = [move for move in edges if move in legal_moves]
            if available_edges:
                return random.choice(available_edges)

        # Random move as fallback
        return random.choice(legal_moves)

    @staticmethod
    def get_legal_moves(board: np.ndarray) -> List[Tuple[int, int]]:
        """Returns list of available moves on the board"""
        return [(i, j) for i in range(3) for j in range(3) if board[i][j] == 0]

    @staticmethod
    def is_valid_move(board: np.ndarray, move: Tuple[int, int]) -> bool:
        """Checks if a move is valid"""
        if not (0 <= move[0] < 3 and 0 <= move[1] < 3):
            return False
        return board[move[0]][move[1]] == 0

    @staticmethod
    def make_move(board: np.ndarray, move: Tuple[int, int], player: int) -> bool:
        """
        Makes a move on the board if valid
        Returns True if move was successful, False otherwise
        """
        if not TicTacToeGame.is_valid_move(board, move):
            return False
        board[move[0]][move[1]] = player
        return True

    @staticmethod
    def print_board(board: np.ndarray):
        """Prints the current board state"""
        symbols = {0: ' ', 1: 'X', -1: 'O'}
        print('\n-------------')
        for i in range(3):
            print('|', end=' ')
            for j in range(3):
                print(f"{symbols[board[i][j]]}", end=' | ')
            print('\n-------------')

    @staticmethod
    def minimax(board: List[List[int]], depth: int, is_maximizing: bool) -> int:
        scores = {1: 1, -1: -1, 0: 0}
        
        winner = TicTacToeGame.check_winner(board)
        if winner is not None:
            return scores[winner]
        
        if is_maximizing:
            best_score = float('-inf')
            for i in range(3):
                for j in range(3):
                    if board[i][j] == 0:
                        board[i][j] = 1
                        score = TicTacToeGame.minimax(board, depth + 1, False)
                        board[i][j] = 0
                        best_score = max(score, best_score)
            return best_score
        else:
            best_score = float('inf')
            for i in range(3):
                for j in range(3):
                    if board[i][j] == 0:
                        board[i][j] = -1
                        score = TicTacToeGame.minimax(board, depth + 1, True)
                        board[i][j] = 0
                        best_score = min(score, best_score)
            return best_score

    @staticmethod
    def get_best_move(board: List[List[int]]) -> Optional[Tuple[int, int]]:
        best_score = float('-inf')
        best_move = None
        
        for i in range(3):
            for j in range(3):
                if board[i][j] == 0:
                    board[i][j] = 1
                    score = TicTacToeGame.minimax(board, 0, False)
                    board[i][j] = 0
                    
                    if score > best_score:
                        best_score = score
                        best_move = (i, j)
        
        return best_move

