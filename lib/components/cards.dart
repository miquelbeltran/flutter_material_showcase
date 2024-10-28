import 'package:flutter/material.dart';

class MaterialShowcaseCards extends StatelessWidget {
  const MaterialShowcaseCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Basic Card'),
                  subtitle: Text('With ListTile'),
                ),
                OverflowBar(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('ACTION 1'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('ACTION 2'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          elevation: 8,
          child: Container(
            width: 200,
            height: 100,
            padding: const EdgeInsets.all(16),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite),
                Text('Elevated Card'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
