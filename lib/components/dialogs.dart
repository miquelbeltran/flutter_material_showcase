import 'package:flutter/material.dart';

class MaterialShowcaseDialogs extends StatelessWidget {
  const MaterialShowcaseDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        SimpleDialog(
          title: const Text('Simple Dialog'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('Option 2'),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: () {},
              child: const Text('Cancel'),
            ),
          ],
        ),
        AlertDialog(
          title: const Text('Alert Dialog'),
          content: const Text('This is an alert dialog.'),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('OK'),
            ),
          ],
        ),
      ],
    );
  }
}
