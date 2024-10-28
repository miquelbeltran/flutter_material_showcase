import 'package:flutter/material.dart';

class MaterialShowcaseDateTimePickers extends StatelessWidget {
  const MaterialShowcaseDateTimePickers({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        Card(
          child: CalendarDatePicker(
            firstDate: DateTime(2019),
            initialDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            onDateChanged: (date) {},
          ),
        ),
        Card(
          child: TimePickerDialog(
            initialTime: TimeOfDay.now(),
          ),
        ),
      ],
    );
  }
}
