import 'package:flutter/material.dart';
import '../../../components/text/custom_information_text.dart';
import '../../../core/base_utility.dart';

Container textContainer(String coffeName, String coffeeInfo) {
  return Container(
      width: AppComponentSizes.bigWidth,
      margin: AppMargin.containersMargin,
      decoration: BoxDecoration(
        borderRadius: AppRadius.componentRadius,
        color: AppColor.tacao,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          firstTextInformation(coffeName),
          secondTextInformation(coffeeInfo),
        ],
      ));
}

Container secondTextInformation(String coffeeInfo) {
  return customInformationText(
      coffeeInfo,
      PaddingUtility.textPading,
      TextStyleView.fontSizeSuggestion,
      AppComponentSizes.coffeNameWidth,
      AlignUtility.textAlign,
      TextStyleView.fontWeightSecond);
}

Container firstTextInformation(String coffeName) {
  return customInformationText(
      coffeName,
      PaddingUtility.coffeNamePading,
      TextStyleView.fontSizefirst,
      AppComponentSizes.bigWidth,
      AlignUtility.textAlign,
      TextStyleView.fontWeight);
}
