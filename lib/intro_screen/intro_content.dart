import 'package:flutter/material.dart';
import 'package:sendme_work/common/bankcard/half_semi_circle.dart';
import 'package:sendme_work/intro_screen/intro_objects.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: const HalfSemiCircle(
              color: Color(0xff22282C),
              onIntro: true,
            ),
          ),
          Center(
            child: Column(
              children: const [
                SizedBox(
                  width: 200,
                  child: Text(
                    'Save your balance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                //Intro Items
                SizedBox(
                  height: 450,
                  child: IntroObjects(),
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    'Best solution to save yoour balance & transactions',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
