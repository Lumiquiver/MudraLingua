import 'package:flutter/material.dart';

class PracticeTab extends StatelessWidget {
  const PracticeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              title: Text('Free Camera Mode'),
              subtitle: Text('Live confidence meter + real-time coaching'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Challenge: 10 words in 60 seconds'),
              subtitle: Text('Earn Mudras, gems, and leaderboard points'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Record & Review'),
              subtitle: Text('Store local recordings for self-feedback'),
            ),
          ),
        ],
      ),
    );
  }
}
