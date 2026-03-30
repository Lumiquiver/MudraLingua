import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/localization/app_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Text(strings.appTitle, style: Theme.of(context).textTheme.displaySmall),
              const SizedBox(height: 8),
              Text(strings.tagline, style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 20),
              const _LevelQuiz(),
              const Spacer(),
              FilledButton(
                onPressed: () => context.go('/home'),
                child: const Text('Start Learning'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LevelQuiz extends StatefulWidget {
  const _LevelQuiz();

  @override
  State<_LevelQuiz> createState() => _LevelQuizState();
}

class _LevelQuizState extends State<_LevelQuiz> {
  String _level = 'Beginner';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Quick level check', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'Beginner', label: Text('Beginner')),
                ButtonSegment(value: 'Intermediate', label: Text('Intermediate')),
              ],
              selected: {_level},
              onSelectionChanged: (set) => setState(() => _level = set.first),
            ),
          ],
        ),
      ),
    );
  }
}
