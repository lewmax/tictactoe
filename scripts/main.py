import numpy as np
import os
from game.strategy import TicTacToeStrategy
from data.dataset import TicTacToeDataset
from data.model_trainer import TicTacToeModelTrainer


# Prepares training data arrays from the dataset.
def prepare_data(dataset):
    X, y = [], []
    for board, move in dataset.items():
        X.append(np.array(board, dtype=np.float32).reshape(3, 3))
        y.append(move)
    return np.array(X), np.array(y)

# Main function to tie everything together.
def main():
    strategy = TicTacToeStrategy()
    dataset_generator = TicTacToeDataset(strategy)
    dataset = dataset_generator.generate()
    print("Dataset samples:", len(dataset))
    
    x, y = prepare_data(dataset)
    trainer = TicTacToeModelTrainer()
    model = trainer.train(x, y)
    
    export_path = os.path.join("..", "assets", "tflite", "tic_tac_toe_model.tflite")
    trainer.export_tflite(model, export_path)

if __name__ == '__main__':
    main()
