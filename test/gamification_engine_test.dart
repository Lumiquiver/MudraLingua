import 'package:flutter_test/flutter_test.dart';
import 'package:mudra_lingua/features/gamification/gamification_engine.dart';

void main() {
  test('awards more XP for correct answers with streak bonus', () {
    final engine = GamificationEngine();
    final xp = engine.calculateXp(correct: true, streakDays: 9, difficulty: 3);
    expect(xp, 16);
  });
}
