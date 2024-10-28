library flutter_material_showcase;

import 'package:flutter/material.dart';

/// Material Design components showcase for Flutter apps
///
/// Use this widget to preview your ThemeData and see
/// how it looks like with different Material Widgets.
///
/// The [tabBackgroundColor] will default to [Colors.black26] if not set.
class MaterialShowcase extends StatefulWidget {
  /// Creates a MaterialShowcase
  const MaterialShowcase({
    super.key,
    this.tabBackgroundColor,
  });

  /// Color to be used under the TabBar
  final Color? tabBackgroundColor;

  @override
  State<MaterialShowcase> createState() => _MaterialShowcaseState();
}

class _MaterialShowcaseState extends State<MaterialShowcase> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  bool _switchValue = false;
  double _sliderValue = 0.5;
  int _selectedIndex = 0;

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
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

  Widget _buildButtonRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
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
      ),
    );
  }

  Widget _buildIconButtonRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
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
      ),
    );
  }

  Widget _buildChipRow() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: <Widget>[
          Chip(
            label: Text('Basic Chip'),
          ),
          Chip(
            avatar: FlutterLogo(),
            label: Text('Avatar Chip'),
          ),
          Chip(
            avatar: Icon(Icons.person),
            label: Text('Icon Chip'),
            deleteIcon: Icon(Icons.cancel),
            onDeleted: null,
          ),
          InputChip(
            label: Text('Input Chip'),
          ),
          InputChip(
            avatar: Icon(Icons.add),
            label: Text('Input with Icon'),
            deleteIcon: Icon(Icons.cancel),
            onDeleted: null,
          ),
          RawChip(
            label: Text('Raw Chip'),
            showCheckmark: true,
            selected: true,
          ),
          ActionChip(
            avatar: Icon(Icons.settings),
            label: Text('Action Chip'),
            onPressed: null,
          ),
        ],
      ),
    );
  }

  Widget _buildChoiceChipRow() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: <Widget>[
          ChoiceChip(
            label: Text('Selected Chip'),
            selected: true,
          ),
          ChoiceChip(
            avatar: Icon(Icons.check),
            label: Text('With Icon'),
            selected: true,
          ),
          ChoiceChip(
            label: Text('Not Selected'),
            selected: false,
          ),
          ChoiceChip(
            avatar: Icon(Icons.close),
            label: Text('Not Selected Icon'),
            selected: false,
          ),
          FilterChip(
            label: Text('Filter Chip'),
            selected: true,
            onSelected: null,
          ),
          FilterChip(
            avatar: Icon(Icons.filter_list),
            label: Text('Filter with Icon'),
            selected: false,
            onSelected: null,
          ),
        ],
      ),
    );
  }

  Widget _buildCheckboxRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: (value) {},
          ),
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          Checkbox(
            value: null,
            tristate: true,
            onChanged: (value) {},
          ),
          Switch(
            value: _switchValue,
            onChanged: (value) => setState(() => _switchValue = value),
          ),
          Radio(
            value: true,
            groupValue: true,
            onChanged: (value) {},
          ),
          Radio(
            value: false,
            groupValue: true,
            onChanged: (value) {},
          ),
          Slider(
            value: _sliderValue,
            onChanged: (value) => setState(() => _sliderValue = value),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInput() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller1,
            decoration: const InputDecoration(
              labelText: 'Outlined TextField',
              hintText: 'Enter text here',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.clear),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _controller2,
            decoration: const InputDecoration(
              labelText: 'Filled TextField',
              hintText: 'Enter text here',
              filled: true,
              border: UnderlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Error TextField',
              errorText: 'Error message',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: 'Disabled TextField',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTabRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ColoredBox(
        color: widget.tabBackgroundColor ?? Colors.black26,
        child: const Column(
          children: [
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
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) =>
                setState(() => _selectedIndex = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              NavigationDestination(
                icon: Icon(Icons.commute),
                label: 'Commute',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.bookmark_border),
                label: 'Saved',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Basic Card'),
                    subtitle: Text('With ListTile'),
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('ACTION 1'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('ACTION 2'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 8,
            child: Container(
              width: 200,
              height: 100,
              padding: const EdgeInsets.all(16),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite),
                  Text('Elevated Card'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: CalendarDatePicker(
          firstDate: DateTime(2019),
          initialDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          onDateChanged: (date) {},
        ),
      ),
    );
  }

  Widget _buildDialog() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
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
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
      ),
    );
  }
}
