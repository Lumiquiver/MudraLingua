"""Convert a trained Keras ISL landmark model to TensorFlow Lite."""

import argparse
from pathlib import Path

import tensorflow as tf


def convert(saved_model_dir: Path, output_path: Path) -> None:
    converter = tf.lite.TFLiteConverter.from_saved_model(str(saved_model_dir))
    converter.optimizations = [tf.lite.Optimize.DEFAULT]
    converter.target_spec.supported_ops = [
        tf.lite.OpsSet.TFLITE_BUILTINS,
        tf.lite.OpsSet.SELECT_TF_OPS,
    ]
    converter.inference_input_type = tf.float32
    converter.inference_output_type = tf.float32
    tflite_model = converter.convert()
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_bytes(tflite_model)
    print(f'Wrote TFLite model to {output_path}')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--saved_model_dir', required=True)
    parser.add_argument('--output', default='assets/models/isl_sequence_model.tflite')
    args = parser.parse_args()
    convert(Path(args.saved_model_dir), Path(args.output))
