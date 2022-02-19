import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sendme_work/intro_screen/intro_content.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacementNamed('/');
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0XFF1D2125),
      globalHeader: const Padding(
        padding: EdgeInsets.only(top: 64.0),
        child: Text(
          'SUPERBANK',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 8.0,
          ),
        ),
      ),
      globalFooter: Padding(
        padding: const EdgeInsets.only(bottom: 64.0),
        child: SizedBox(
          width: 300,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: const Color(0xffF0B28E)),
            child: const Text(
              'Get Started',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            onPressed: () => _onIntroEnd(context),
          ),
        ),
      ),
      rawPages: const [
        IntroContent(),
        SizedBox(),
        SizedBox(),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showNextButton: false,
      curve: Curves.fastLinearToSlowEaseIn,
      dotsDecorator: const DotsDecorator(
        activeColor: Colors.white,
        size: Size(8.0, 8.0),
        color: Colors.grey,
        activeSize: Size(8.0, 8.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
