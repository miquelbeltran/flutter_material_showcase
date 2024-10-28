import 'package:flutter/material.dart';

class MaterialShowcaseTexts extends StatelessWidget {
  const MaterialShowcaseTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Display Large',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'Display Medium',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          'Display Small',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'Headline Large',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          'Headline Medium',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          'Headline Small',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Title Large',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Title Medium',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'Title Small',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          'Body Large',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'Body Medium',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          'Body Small',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          'Label Large',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          'Label Medium',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          'Label Small',
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
