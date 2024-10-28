import 'package:flutter/material.dart';

class MaterialShowcaseSection extends StatelessWidget {
  const MaterialShowcaseSection({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const Divider(height: 10),
        Padding(
          padding: const EdgeInsets.all(20),
          child: child,
        ),
      ],
    );
  }
}
