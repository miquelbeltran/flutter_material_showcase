import 'package:flutter/material.dart';

class MaterialShowcaseIconButtons extends StatelessWidget {
  const MaterialShowcaseIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        FloatingActionButton.small(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        FloatingActionButton.large(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Extended FAB'),
        ),
        IconButton(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        IconButton.filled(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        IconButton.filledTonal(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        IconButton.outlined(
          icon: const Icon(Icons.favorite),
          onPressed: () {},
        ),
        const CircleAvatar(
          child: Text('AV'),
        ),
        const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person),
        ),
      ],
    );
  }
}
