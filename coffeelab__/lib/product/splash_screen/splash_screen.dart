import 'package:flutter/material.dart';

import '../../components/text/positionedtext/positioned_text.dart';

import '../../core/base_utility.dart';
import '../home_screen/home_screen.dart';
import 'splash_image/image_pages_views.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int seconds = 2;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: seconds), () async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        imagePageViews(),
        mainTextView(AppColor.koromiko),
        bottomTextView(AppColor.white),
      ]),
    );
  }

  PositionedText bottomTextView(Color color) {
    return PositionedText(
        textColor: AppColor.koromiko,
        maintext: SplashTextView.bottomtextx,
        text: SplashTextView.bottomtext,
        textStyle: textStyleViewPage(color),
        left: CoffeeeAssistantPositioned.left,
        right: CoffeeeAssistantPositioned.right,
        bottom: CoffeeeAssistantPositioned.bottomx);
  }

  PositionedText mainTextView(Color color) {
    return PositionedText(
      textColor: AppColor.white,
      maintext: SplashTextView.maintextx,
      text: SplashTextView.maintext,
      textStyle: textStyleViewPage(color),
      top: MainPositioned.topx,
      left: MainPositioned.left,
      right: MainPositioned.right,
    );
  }

//

}
