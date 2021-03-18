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
  const MaterialShowcase({
    Key? key,
    this.tabBackgroundColor,
  }) : super(key: key);

  /// Color to be used under the TabBar
  final Color? tabBackgroundColor;

  @override
  _MaterialShowcaseState createState() => _MaterialShowcaseState();
}

class _MaterialShowcaseState extends State<MaterialShowcase> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

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
          _buildCalendar(),
          _buildDialog(),
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
        child: const TabBar(
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
          groupValue: false,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Row _buildChoiceChipRow() {
    return Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ChoiceChip(
            label: Text('Selected Chip'),
            selected: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
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
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Chip(
            label: Text('Chip'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Chip(
            label: Text('Avatar Chip'),
            avatar: FlutterLogo(),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
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
            onPressed: () {},
            child: const Icon(Icons.accessibility),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(Icons.accessibility),
            onPressed: () {},
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Text('AV'),
          ),
        )
      ],
    );
  }

  Row _buildButtonRow() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined'),
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Item 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Item 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility),
            label: 'Item 3',
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
          child: const Center(
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
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            key: const Key('TextField1'),
            controller: _controller1,
            decoration: const InputDecoration(
              hintText: 'An Outline Border TextField',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            key: const Key('TextField2'),
            controller: _controller2,
            decoration: const InputDecoration(
              hintText: 'A TextField',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCalendar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CalendarDatePicker(
        firstDate: DateTime(2019),
        initialDate: DateTime.now(),
        lastDate: DateTime.now().add(const Duration(days: 5)),
        onDateChanged: (date) {},
      ),
    );
  }

  Widget _buildDialog() {
    return SimpleDialog(
      title: const Text('Title'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {},
          child: const Text('SimpleDialogOption'),
        ),
      ],
    );
  }

  Widget _buildText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Headline 1',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Headline 2',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            'Headline 3',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            'Headline 4',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Headline 5',
            style: Theme.of(context).textTheme.headline5,
          ),
          Text(
            'Headline 6',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Subtitle 1',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            'Subtitle 2',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            'Caption',
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            'Body Text 1',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Body Text 2',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
