# flutter_material_showcase

Material Design components showcase for Flutter apps.

This project is based on Ataul's [Material Design Components Showcase](https://github.com/ataulm/material-design-components-showcase) Android project, but for Flutter!

You can use this Flutter package to preview your `ThemeData` and see how it looks like with different Material Widgets.

![image](https://raw.githubusercontent.com/miquelbeltran/flutter_material_showcase/master/screenshot.png)

## Usage

Add the `MaterialShowcase` Widget somewhere in your app:

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

Then play with the different parameters in `ThemeData` and see how it looks like.

## Contributing

- Additions to the `MaterialShowcase` Widget are welcome.
- Documentation improvements are welcome.

## License

```
MIT License

Copyright (c) 2019 Miguel Beltran
```

Miguel Beltran - [beltran.work](https://beltran.work)



