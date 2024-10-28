import 'package:flutter/material.dart';

class MaterialShowcaseChips extends StatelessWidget {
  const MaterialShowcaseChips({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        Chip(
          label: const Text('Basic Chip'),
          onDeleted: () {},
        ),
        Chip(
          avatar: const FlutterLogo(),
          label: const Text('Avatar Chip'),
          onDeleted: () {},
        ),
        Chip(
          avatar: const Icon(Icons.person),
          label: const Text('Icon Chip'),
          deleteIcon: const Icon(Icons.cancel),
          onDeleted: () {},
        ),
        InputChip(
          label: const Text('Input Chip'),
          onSelected: (_) {},
        ),
        InputChip(
          avatar: const Icon(Icons.add),
          label: const Text('Input with Icon'),
          deleteIcon: const Icon(Icons.cancel),
          onSelected: (_) {},
        ),
        RawChip(
          label: const Text('Raw Chip'),
          showCheckmark: true,
          selected: true,
          onSelected: (_) {},
        ),
        ActionChip(
          avatar: const Icon(Icons.settings),
          label: const Text('Action Chip'),
          onPressed: () {},
        ),
        ChoiceChip(
          label: const Text('Selected Chip'),
          selected: true,
          onSelected: (_) {},
        ),
        ChoiceChip(
          avatar: const Icon(Icons.check),
          label: const Text('With Icon'),
          selected: true,
          onSelected: (_) {},
        ),
        ChoiceChip(
          label: const Text('Not Selected'),
          selected: false,
          onSelected: (_) {},
        ),
        ChoiceChip(
          avatar: const Icon(Icons.close),
          label: const Text('Not Selected Icon'),
          selected: false,
          onSelected: (_) {},
        ),
        FilterChip(
          label: const Text('Filter Chip'),
          selected: true,
          onSelected: (_) {},
        ),
        FilterChip(
          avatar: const Icon(Icons.filter_list),
          label: const Text('Filter with Icon'),
          onSelected: (_) {},
        ),
      ],
    );
  }
}
