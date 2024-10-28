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
  const MaterialShowcase({
    super.key,
    this.customSections = const [],
  });

  final List<MaterialShowcaseSection> customSections;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ...customSections,
            const MaterialShowcaseSection(
              title: 'Buttons',
              child: MaterialShowcaseButtons(),
            ),
            const MaterialShowcaseSection(
              title: 'Icon Buttons',
              child: MaterialShowcaseIconButtons(),
            ),
            const MaterialShowcaseSection(
              title: 'Chips',
              child: MaterialShowcaseChips(),
            ),
            const MaterialShowcaseSection(
              title: 'Selection Controls',
              child: MaterialShowcaseSelectionControls(),
            ),
            const MaterialShowcaseSection(
              title: 'Text Inputs',
              child: MaterialShowcaseTextInputs(),
            ),
            const MaterialShowcaseSection(
              title: 'Tabs',
              child: MaterialShowcaseTabs(),
            ),
            const MaterialShowcaseSection(
              title: 'Bottom Navigation',
              child: MaterialShowcaseBottomNavigation(),
            ),
            const MaterialShowcaseSection(
              title: 'Cards',
              child: MaterialShowcaseCards(),
            ),
            const MaterialShowcaseSection(
              title: 'Date & Time Pickers',
              child: MaterialShowcaseDateTimePickers(),
            ),
            const MaterialShowcaseSection(
              title: 'Dialogs',
              child: MaterialShowcaseDialogs(),
            ),
            const MaterialShowcaseSection(
              title: 'Texts',
              child: MaterialShowcaseTexts(),
            ),
          ],
        ),
      ),
    );
  }
}
