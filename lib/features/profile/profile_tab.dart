import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CircleAvatar(radius: 36, child: Icon(Icons.person)),
          SizedBox(height: 12),
          Center(child: Text('Aarav • Level 8')),
          SizedBox(height: 12),
          Card(child: ListTile(title: Text('Streak Graph'), subtitle: Text('7-day sparkline + milestones'))),
          Card(child: ListTile(title: Text('XP History'), subtitle: Text('Weekly gain + heatmap'))),
          Card(child: ListTile(title: Text('Friends & Leagues'), subtitle: Text('Add friends, compare weekly XP'))),
          Card(child: ListTile(title: Text('Certificates'), subtitle: Text('Share completion certificates'))),
          Card(child: ListTile(title: Text('Contribute Sign Video'), subtitle: Text('Upload community datasets with consent'))),
        ],
      ),
    );
  }
}
