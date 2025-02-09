import tensorflow as tf
import os

# Model trainer for building, training, and exporting the model.
class TicTacToeModelTrainer:
    def __init__(self, learning_rate=0.01, epochs=1000, batch_size=16):
        self.learning_rate = learning_rate
        self.epochs = epochs
        self.batch_size = batch_size

    def build_model(self):
        model = tf.keras.Sequential([
            tf.keras.layers.Flatten(input_shape=(3, 3)),
            tf.keras.layers.Dense(81, activation='relu'),
            tf.keras.layers.Dense(9, activation='softmax')
        ])
        model.compile(
            optimizer=tf.keras.optimizers.Adam(learning_rate=self.learning_rate),
            loss='categorical_crossentropy',
            metrics=['accuracy'])
        return model

    def train(self, x, y):
        model = self.build_model()
        y_one_hot = tf.keras.utils.to_categorical(y, num_classes=9)
        model.fit(x, y_one_hot, epochs=self.epochs, batch_size=self.batch_size, verbose=2)
        return model

    def export_tflite(self, model, path):
        converter = tf.lite.TFLiteConverter.from_keras_model(model)
        tflite_model = converter.convert()
        os.makedirs(os.path.dirname(path), exist_ok=True)
        with open(path, 'wb') as f:
            f.write(tflite_model)
        print("TensorFlow Lite model saved to:", path)