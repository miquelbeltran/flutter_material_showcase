import 'package:flutter/material.dart';

class MaterialShowcaseTabs extends StatelessWidget {
  const MaterialShowcaseTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 10,
      children: <Widget>[
        TabBar(
          tabs: <Widget>[
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.accessibility),
            ),
            Tab(
              text: 'Tab 2',
              icon: Icon(Icons.favorite),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.person),
            ),
          ],
        ),
        SizedBox(height: 8),
        TabBar(
          isScrollable: true,
          tabs: <Widget>[
            Tab(text: 'Scrollable 1'),
            Tab(text: 'Scrollable 2'),
            Tab(text: 'Scrollable 3'),
            Tab(text: 'Scrollable 4'),
            Tab(text: 'Scrollable 5'),
          ],
        ),
      ],
    );
  }
}
