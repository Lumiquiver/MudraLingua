import 'package:flutter/material.dart';

class DashboardTab extends StatelessWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _Hero(),
          SizedBox(height: 12),
          _Stats(),
          SizedBox(height: 12),
          _ContinueCard(),
          SizedBox(height: 12),
          _LeaderboardTeaser(),
        ],
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero();
  @override
  Widget build(BuildContext context) => const Card(
        child: ListTile(
          title: Text('Mudra the Peacock 🦚'),
          subtitle: Text('"Your streak is on fire! 🔥"'),
          trailing: Icon(Icons.local_fire_department),
        ),
      );
}

class _Stats extends StatelessWidget {
  const _Stats();
  @override
  Widget build(BuildContext context) => const Row(
        children: [
          Expanded(child: Card(child: ListTile(title: Text('Streak'), subtitle: Text('7 days')))),
          Expanded(child: Card(child: ListTile(title: Text('XP'), subtitle: Text('1240')))),
        ],
      );
}

class _ContinueCard extends StatelessWidget {
  const _ContinueCard();
  @override
  Widget build(BuildContext context) => const Card(
        child: ListTile(
          title: Text('Continue Learning'),
          subtitle: Text('Unit 2 • Numbers 0-20'),
          trailing: Icon(Icons.play_arrow),
        ),
      );
}

class _LeaderboardTeaser extends StatelessWidget {
  const _LeaderboardTeaser();
  @override
  Widget build(BuildContext context) => const Card(
        child: ListTile(
          title: Text('Weekly League'),
          subtitle: Text('You are #12 in India-wide Emerald League'),
          trailing: Icon(Icons.emoji_events),
        ),
      );
}
