library flutter_material_showcase;

import 'package:flutter/material.dart';
import 'package:flutter_material_showcase/components/bottom_navigation.dart';
import 'package:flutter_material_showcase/components/buttons.dart';
import 'package:flutter_material_showcase/components/cards.dart';
import 'package:flutter_material_showcase/components/chips.dart';
import 'package:flutter_material_showcase/components/datetime_pickers.dart';
import 'package:flutter_material_showcase/components/dialogs.dart';
import 'package:flutter_material_showcase/components/icon_buttons.dart';
import 'package:flutter_material_showcase/components/selection_controls.dart';
import 'package:flutter_material_showcase/components/showcase_section.dart';
import 'package:flutter_material_showcase/components/tabs.dart';
import 'package:flutter_material_showcase/components/text_inputs.dart';
import 'package:flutter_material_showcase/components/texts.dart';

/// Material Design components showcase for Flutter apps
///
/// Use this widget to preview your ThemeData and see
/// how it looks like with different Material Widgets.
///
/// The [tabBackgroundColor] will default to [Colors.black26] if not set.
class MaterialShowcase extends StatelessWidget {
  /// Creates a MaterialShowcase
  const MaterialShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ExampleSection(
              title: 'Buttons',
              child: MaterialShowcaseButtons(),
            ),
            ExampleSection(
              title: 'Icon Buttons',
              child: MaterialShowcaseIconButtons(),
            ),
            ExampleSection(
              title: 'Chips',
              child: MaterialShowcaseChips(),
            ),
            ExampleSection(
              title: 'Selection Controls',
              child: MaterialShowcaseSelectionControls(),
            ),
            ExampleSection(
              title: 'Text Inputs',
              child: MaterialShowcaseTextInputs(),
            ),
            ExampleSection(
              title: 'Tabs',
              child: MaterialShowcaseTabs(),
            ),
            ExampleSection(
              title: 'Bottom Navigation',
              child: MaterialShowcaseBottomNavigation(),
            ),
            ExampleSection(
              title: 'Cards',
              child: MaterialShowcaseCards(),
            ),
            ExampleSection(
              title: 'Date & Time Pickers',
              child: MaterialShowcaseDateTimePickers(),
            ),
            ExampleSection(
              title: 'Dialogs',
              child: MaterialShowcaseDialogs(),
            ),
            ExampleSection(
              title: 'Texts',
              child: MaterialShowcaseTexts(),
            ),
          ],
        ),
      ),
    );
  }
}
