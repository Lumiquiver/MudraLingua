import 'package:flutter/material.dart';

class TranslateTab extends StatelessWidget {
  const TranslateTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Theme.of(context).colorScheme.primary),
              ),
              child: const Center(
                child: Text(
                  'Camera Preview\nBounding Box + 21 landmark overlay',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Detected: धन्यवाद / Thank you', textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 8,
            children: [
              FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.volume_up), label: const Text('Speak')),
              OutlinedButton(onPressed: () {}, child: const Text('Favorite')),
              OutlinedButton(onPressed: () {}, child: const Text('Letters')),
              OutlinedButton(onPressed: () {}, child: const Text('Words')),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
