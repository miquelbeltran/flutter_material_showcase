library flutter_material_showcase;

import 'package:flutter/material.dart';

/// Material Design components showcase for Flutter apps
///
/// Use this widget to preview your ThemeData and see
/// how it looks like with different Material Widgets.
///
/// The [tabBackgroundColor] will default to [Colors.black26] if not set.
///
class MaterialShowcase extends StatefulWidget {
  /// Creates a MaterialShowcase
  MaterialShowcase({
    Key key,
    this.tabBackgroundColor,
  }) : super(key: key);

  /// Color to be used under the TabBar
  final Color tabBackgroundColor;

  @override
  _MaterialShowcaseState createState() => _MaterialShowcaseState();
}

class _MaterialShowcaseState extends State<MaterialShowcase> {
  TextEditingController _controller1;
  TextEditingController _controller2;

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller1.dispose();
    _controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildButtonRow(),
          _buildIconButtonRow(),
          _buildChipRow(),
          _buildChoiceChipRow(),
          _buildCheckboxRow(),
          _buildTextInput(),
          _buildTabRow(context),
          _buildBottomNavigation(),
          _buildCard(),
          _buildText(context),
        ],
      ),
    );
  }

  Widget _buildTabRow(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: widget.tabBackgroundColor ?? Colors.black26,
        child: TabBar(
          tabs: <Widget>[
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.accessibility),
            ),
            Tab(
              text: 'Tab 2',
              icon: Icon(Icons.accessibility),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.accessibility),
            ),
          ],
        ),
      ),
    );
  }

  Row _buildCheckboxRow() {
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

  Row _buildChoiceChipRow() {
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

  Row _buildChipRow() {
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

  Row _buildIconButtonRow() {
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Text('AV'),
          ),
        )
      ],
    );
  }

  Row _buildButtonRow() {
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

  Widget _buildBottomNavigation() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('Item 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('Item 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            title: Text('Item 3'),
          ),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: 100,
          child: Center(
            child: Text('Material Card'),
          ),
        ),
      ),
    );
  }

  Widget _buildTextInput() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            key: Key('TextField1'),
            controller: _controller1,
            decoration: InputDecoration(
              hintText: "An Outline Border TextField",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            key: Key('TextField2'),
            controller: _controller2,
            decoration: InputDecoration(
              hintText: "A TextField",
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildText(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Title',
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            'Subtitle',
            style: Theme.of(context).textTheme.subtitle,
          ),
          Text(
            'Headline',
            style: Theme.of(context).textTheme.headline,
          ),
          Text(
            'Subhead',
            style: Theme.of(context).textTheme.subhead,
          ),
          Text(
            'Body 1',
            style: Theme.of(context).textTheme.body1,
          ),
          Text(
            'Body 2',
            style: Theme.of(context).textTheme.body2,
          ),
          Text(
            'Caption',
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            'Display 1',
            style: Theme.of(context).textTheme.display1,
          ),
          Text(
            'Display 2',
            style: Theme.of(context).textTheme.display2,
          ),
          Text(
            'Display 3',
            style: Theme.of(context).textTheme.display3,
          ),
          Text(
            'Display 4',
            style: Theme.of(context).textTheme.display4,
          ),
        ],
      ),
    );
  }
}
