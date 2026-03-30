import 'dart:typed_data';

import '../../data/models/sign_prediction.dart';

abstract class SignInferenceService {
  Future<void> initialize();
  Future<SignPrediction> predictFromLandmarks(Float32List sequence126);
}

class OnDeviceSignInferenceService implements SignInferenceService {
  @override
  Future<void> initialize() async {
    // TODO: Load TFLite model from assets/models/isl_sequence_model.tflite.
  }

  @override
  Future<SignPrediction> predictFromLandmarks(Float32List sequence126) async {
    // TODO: Use tflite_flutter interpreter invocation.
    return SignPrediction(
      label: 'Hello',
      confidence: 0.98,
      languagePair: const {'en': 'Hello', 'hi': 'नमस्ते'},
      timestamp: DateTime.now(),
    );
  }
}
