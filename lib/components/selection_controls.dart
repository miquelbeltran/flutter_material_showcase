import 'package:flutter/material.dart';

class MaterialShowcaseSelectionControls extends StatefulWidget {
  const MaterialShowcaseSelectionControls({super.key});

  @override
  State<MaterialShowcaseSelectionControls> createState() =>
      _MaterialShowcaseSelectionControlsState();
}

class _MaterialShowcaseSelectionControlsState
    extends State<MaterialShowcaseSelectionControls> {
  bool _switchValue = false;
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
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
    );
  }
}
