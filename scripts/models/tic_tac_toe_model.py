import tensorflow as tf
import numpy as np
import os
from tensorflow.keras import layers, models, regularizers
from data.data_generator import DataGenerator
from typing import List, Tuple, Optional

class TicTacToeModel:
    def __init__(self):
        self.model = self._create_model()
        self.game_states: List[np.ndarray] = []
        self.move_history: List[Tuple[int, int]] = []
        
    def _create_model(self) -> tf.keras.Model:
        """Creates a simpler linear model as suggested in Mitchell's book"""
        model = tf.keras.Sequential([
            tf.keras.layers.Input(shape=(9,)),  # Flattened board
            tf.keras.layers.Dense(64, activation='relu'),
            tf.keras.layers.Dense(32, activation='relu'),
            tf.keras.layers.Dense(1, activation='tanh')  # Single score output
        ])
        
        model.compile(
            optimizer=tf.keras.optimizers.Adam(learning_rate=0.001),
            loss='mse'
        )
        return model

    def evaluate_board(self, board: np.ndarray) -> float:
        """Evaluates a board state and returns a score between -1 and 1"""
        flat_board = board.flatten()
        return float(self.model.predict(flat_board.reshape(1, -1), verbose=0)[0][0])

    def get_best_move(self, board: np.ndarray, legal_moves: List[Tuple[int, int]]) -> Tuple[int, int]:
        """Selects the best move using the evaluator function"""
        best_score = float('-inf')
        best_move = None
        
        # Score each possible next state
        for move in legal_moves:
            next_board = board.copy()
            next_board[move[0]][move[1]] = 1
            score = self.evaluate_board(next_board)
            
            if score > best_score:
                best_score = score
                best_move = move
        
        return best_move

    def record_state(self, board: np.ndarray, move: Tuple[int, int]):
        """Records a game state and move for training"""
        self.game_states.append(board.copy())
        self.move_history.append(move)

    def train_on_game_result(self, final_result: float):
        """Trains the model using temporal difference learning"""
        if not self.game_states:
            return
            
        # Prepare training data
        X = []
        y = []
        
        # Start with the final state
        current_value = final_result
        
        # Work backwards through the game
        for state in reversed(self.game_states):
            X.append(state.flatten())
            y.append(current_value)
            # Update current value with temporal difference
            current_value = 0.9 * current_value  # Discount factor of 0.9
        
        # Convert to numpy arrays
        X = np.array(X)
        y = np.array(y).reshape(-1, 1)
        
        # Train the model
        self.model.fit(X, y, verbose=0, batch_size=len(X))
        
        # Clear history
        self.game_states = []
        self.move_history = []

    def save_model(self, filepath: str):
        """Saves the model to a file"""
        self.model.save(filepath)

    def save_as_tflite(self, filepath: str):
        """Saves the model in TFLite format"""
        converter = tf.lite.TFLiteConverter.from_keras_model(self.model)
        tflite_model = converter.convert()
        with open(filepath, 'wb') as f:
            f.write(tflite_model)

    @classmethod
    def load_model(cls, filepath: str) -> 'TicTacToeModel':
        """Loads a model from a file"""
        instance = cls()
        instance.model = tf.keras.models.load_model(filepath)
        return instance