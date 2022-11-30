import 'package:flutter/material.dart';
import '../../../core/base_utility.dart';
import '../../../core/ingredient_selection_utility.dart';

class VerticalTextRow extends StatelessWidget {
  const VerticalTextRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: IngredientChoosingUtility.alignment,
      children: [
        rotatedText(Titles.informationTitle,
            IngredientChoosingUtility.informationTitlePadding),
        Row(
          children: [
            rotatedText(Titles.trueCheckTitle,
                IngredientChoosingUtility.trueCheckTitlePadding),
            customSpace(0, 33),
            rotatedText(Titles.falseCheckTitle,
                IngredientChoosingUtility.falseCheckTitlePadding),
          ],
        ),
      ],
    );
  }

  Padding rotatedText(String title, EdgeInsets titlePadding) {
    return Padding(
      padding: titlePadding,
      child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            title,
            style: buttonTextStyle(),
          )),
    );
  }
}

class Titles {
  static String informationTitle = 'İçerik';
  static String trueCheckTitle = 'Olsun';
  static String falseCheckTitle = 'Olmasın';
}
