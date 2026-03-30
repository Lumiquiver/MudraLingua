import 'package:flutter/material.dart';

class LearnTab extends StatelessWidget {
  const LearnTab({super.key});

  static const units = [
    'Alphabet (A-Z)',
    'Numbers (0-100)',
    'Greetings & Basics',
    'Family & People',
    'Food & Daily Needs',
    'Emotions & Questions',
    'Sentences & Grammar',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: units.length,
        itemBuilder: (_, i) => Card(
          child: ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(units[i]),
            subtitle: const Text('Watch • Practice • Match • Type • Sign Sentence'),
            trailing: const Icon(Icons.lock_open),
          ),
        ),
      ),
    );
  }
}
