class GamificationEngine {
  int calculateXp({required bool correct, required int streakDays, required int difficulty}) {
    final streakBonus = streakDays > 0 ? streakDays ~/ 3 : 0;
    final base = correct ? 10 : 2;
    return base + streakBonus + difficulty;
  }

  int calculateMudras({required int unitCompletion, required bool perfect}) {
    final perfectBonus = perfect ? 5 : 0;
    return (unitCompletion * 3) + perfectBonus;
  }
}
