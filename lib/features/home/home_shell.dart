import 'package:flutter/material.dart';
import '../learn/learn_tab.dart';
import '../practice/practice_tab.dart';
import '../profile/profile_tab.dart';
import '../translate/translate_tab.dart';
import 'dashboard_tab.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int index = 0;

  final tabs = const [
    DashboardTab(),
    LearnTab(),
    TranslateTab(),
    PracticeTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index],
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => setState(() => index = 2),
        label: const Text('Quick Translate'),
        icon: const Icon(Icons.camera_alt),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (v) => setState(() => index = v),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.school), label: 'Learn'),
          NavigationDestination(icon: Icon(Icons.translate), label: 'Translate'),
          NavigationDestination(icon: Icon(Icons.sports_esports), label: 'Practice'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
