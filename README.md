# flutter_material_showcase

Material Design components showcase for Flutter apps.

This project is based on Ataul's [Material Design Components Showcase](https://github.com/ataulm/material-design-components-showcase) Android project, but for Flutter!

You can use this Flutter package to preview your `ThemeData` and see how it looks like with different Material Widgets.

![image](https://raw.githubusercontent.com/miquelbeltran/flutter_material_showcase/master/screenshot.png)

## Usage

1. Install

Include the library in your project `pubspec.yaml`:

```
dependencies:
  flutter_material_showcase: ^1.0.0
```

You can install packages from the command line:

```
$ flutter pub get
```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.


Now in your Dart code, you can use:

```
import 'package:flutter_material_showcase/flutter_material_showcase.dart';
```

2. Add the `MaterialShowcase` Widget somewhere in your app:

```dart
MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  home: Scaffold(
    body: ListView(
      children: <Widget>[
        MaterialShowcase(),
      ],
    ),
  ),
);
```

3. Play with the different parameters in `ThemeData` and see how it looks like.

## Contributing

- Additions to the `MaterialShowcase` Widget are welcome.
- Documentation improvements are welcome.

## License

```
MIT License

Copyright (c) 2019 Miguel Beltran
```



