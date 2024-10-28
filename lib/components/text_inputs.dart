import 'package:flutter/material.dart';

class MaterialShowcaseTextInputs extends StatelessWidget {
  const MaterialShowcaseTextInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: TextEditingController(),
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
            controller: TextEditingController(),
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
}
