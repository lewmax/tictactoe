import math
import random
# Basic game logic for Tic Tac Toe
class TicTacToeLogic:
    winning_combinations = [
        (0, 1, 2), (3, 4, 5), (6, 7, 8),
        (0, 3, 6), (1, 4, 7), (2, 5, 8),
        (0, 4, 8), (2, 4, 6)
    ]

    @staticmethod
    def check_winner(board):
        # Returns (game_over, winner). Winner: 1 if AI wins, -1 if opponent, 0 for draw.
        for a, b, c in TicTacToeLogic.winning_combinations:
            if board[a] != 0 and board[a] == board[b] == board[c]:
                return True, board[a]
        if 0 not in board:
            return True, 0
        return False, None

    @staticmethod
    def valid_moves(board):
        return [i for i, v in enumerate(board) if v == 0]

    @staticmethod
    def minimax(board, player):
        terminal, winner = TicTacToeLogic.check_winner(board)
        if terminal:
            return winner, None

        if player == 1:  # Maximizing (AI)
            best_score = -math.inf
            best_move = None
            for move in TicTacToeLogic.valid_moves(board):
                board[move] = player
                score, _ = TicTacToeLogic.minimax(board, -player)
                board[move] = 0
                if score > best_score:
                    best_score = score
                    best_move = move
            return best_score, best_move
        else:  # Minimizing (Opponent)
            best_score = math.inf
            best_move = None
            for move in TicTacToeLogic.valid_moves(board):
                board[move] = player
                score, _ = TicTacToeLogic.minimax(board, -player)
                board[move] = 0
                if score < best_score:
                    best_score = score
                    best_move = move
            return best_score, best_move

    @staticmethod
    def winning_move(board, player):
        for move in TicTacToeLogic.valid_moves(board):
            board[move] = player
            terminal, winner = TicTacToeLogic.check_winner(board)
            board[move] = 0
            if terminal and winner == player:
                return move
        return None

    @staticmethod
    def fork_block_move(board, opponent):
        # If the opponent occupies 2 or more corners, block by taking an edge.
        corners = [0, 2, 6, 8]
        if sum(1 for i in corners if board[i] == opponent) >= 2:
            edges = [1, 3, 5, 7]
            random.shuffle(edges)
            for edge in edges:
                if board[edge] == 0:
                    return edge
        return None

    @staticmethod
    def opposite_corner(board, opponent):
        opp = {0: 8, 2: 6, 6: 2, 8: 0}
        for corner, opposite in opp.items():
            if board[corner] == opponent and board[opposite] == 0:
                return opposite
        return None