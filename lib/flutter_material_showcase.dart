library flutter_material_showcase;

import 'package:flutter/material.dart';

class MaterialShowcase extends StatelessWidget {
  MaterialShowcase({
    Key key,
    this.tabBackgroundColor = Colors.black45,
  }) : super(key: key);

  Color tabBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          buildButtonRow(),
          buildIconButtonRow(),
          buildChipRow(),
          buildChoiceChipRow(),
          buildCheckboxRow(),
          buildTabRow(),
        ],
      ),
    );
  }

  Container buildTabRow() {
    return Container(
          color: tabBackgroundColor,
          child: TabBar(
            tabs: <Widget>[
              Tab(text: 'Tab 1'),
              Tab(icon: Icon(Icons.accessibility)),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.accessibility),
              ),
            ],
          ),
        );
  }

  Row buildCheckboxRow() {
    return Row(
      children: <Widget>[
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Radio(
          value: true,
          groupValue: true,
          onChanged: (value) {},
        ),
        Radio(
          value: false,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Row buildChoiceChipRow() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
            label: Text('Selected Chip'),
            selected: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
            label: Text('Not Selected Chip'),
            selected: false,
          ),
        ),
      ],
    );
  }

  Row buildChipRow() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text('Chip'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chip(
            label: Text('Avatar Chip'),
            avatar: FlutterLogo(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InputChip(
            label: Text('Input Chip'),
          ),
        ),
      ],
    );
  }

  Row buildIconButtonRow() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            child: Icon(Icons.accessibility),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.accessibility),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Row buildButtonRow() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('Raised Button'),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              child: Text('Flat Button'),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
