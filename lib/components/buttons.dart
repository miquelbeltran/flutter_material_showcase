import 'package:flutter/material.dart';

class MaterialShowcaseButtons extends StatelessWidget {
  const MaterialShowcaseButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Elevated with Icon'),
        ),
        FilledButton(
          onPressed: () {},
          child: const Text('Filled Button'),
        ),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Filled with Icon'),
        ),
        FilledButton.tonal(
          onPressed: () {},
          child: const Text('Filled Tonal'),
        ),
        FilledButton.tonalIcon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Tonal with Icon'),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Outlined Button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Outlined with Icon'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Text Button'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Text with Icon'),
        ),
      ],
    );
  }
}
