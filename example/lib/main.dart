import 'package:flutter/material.dart';
import 'package:flutter_material_showcase/flutter_material_showcase.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Brightness brightness = Brightness.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: brightness,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material Design Showcase'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                brightness == Brightness.light
                    ? Icons.wb_sunny
                    : Icons.brightness_2,
              ),
              onPressed: () {
                switch (brightness) {
                  case Brightness.dark:
                    setState(() {
                      brightness = Brightness.light;
                    });
                    break;
                  case Brightness.light:
                    setState(() {
                      brightness = Brightness.dark;
                    });
                    break;
                }
              },
            ),
          ],
        ),
        body: ListView(
          children: const <Widget>[
            MaterialShowcase(),
          ],
        ),
      ),
    );
  }
}
