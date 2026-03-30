class SignPrediction {
  const SignPrediction({
    required this.label,
    required this.confidence,
    required this.languagePair,
    required this.timestamp,
  });

  final String label;
  final double confidence;
  final Map<String, String> languagePair;
  final DateTime timestamp;
}
