from game.logic import TicTacToeLogic
import random

# Strategy mimicking TicTacToeScript behavior
class TicTacToeStrategy:
    corners = [0, 2, 6, 8]
    edges = [1, 3, 5, 7]

    def select_move(self, board, player):
        # 1. Immediate win.
        move = TicTacToeLogic.winning_move(board, player)
        if move is not None:
            return move

        # 2. Block opponent's win.
        move = TicTacToeLogic.winning_move(board, -player)
        if move is not None:
            return move

        # 3. Block fork moves.
        move = TicTacToeLogic.fork_block_move(board, -player)
        if move is not None:
            return move

        # 4. Take center.
        if board[4] == 0:
            return 4

        # 5. Take opposite corner.
        move = TicTacToeLogic.opposite_corner(board, -player)
        if move is not None:
            return move

        # 6. Choose any free corner.
        random.shuffle(self.corners)
        for m in self.corners:
            if board[m] == 0:
                return m

        # 7. Choose any free edge.
        random.shuffle(self.edges)
        for m in self.edges:
            if board[m] == 0:
                return m

        # 8. Fallback to minimax.
        return TicTacToeLogic.minimax(board, player)[1]