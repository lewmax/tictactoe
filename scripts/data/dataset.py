from game.logic import TicTacToeLogic

# Iterative dataset generation using a queue (no recursion)
class TicTacToeDataset:
    def __init__(self, strategy):
        self.strategy = strategy

    def generate(self):
        dataset = {}
        # Each item: (board, player)
        queue = [([0] * 9, 1)]
        seen = set()

        while queue:
            board, player = queue.pop(0)
            board_key = tuple(board)
            if board_key in seen:
                continue
            seen.add(board_key)

            game_over, _ = TicTacToeLogic.check_winner(board)
            if game_over:
                continue

            # Record dataset only if it's AI's turn
            if player == 1:
                move = self.strategy.select_move(board, player)
                dataset[board_key] = move

            for m in TicTacToeLogic.valid_moves(board):
                board_copy = board.copy()
                board_copy[m] = player
                queue.append((board_copy, -player))

        return dataset