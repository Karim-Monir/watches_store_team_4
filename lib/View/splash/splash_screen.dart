import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:watches_store_team_4/view/auth/sign_up.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash screen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Stack(
        children: [
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TransitionImage(
                  imagePath: "assets/images/splashScreen/Group 3.png",
                  transitionDuration: Duration(milliseconds: 900),
                  transitionCurve: Curves.bounceOut,
                  transitionDelay: Duration(milliseconds: 500),
                  transitionOffset: Offset(0.0, 100.0),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: TransitionImage(
                    imagePath: "assets/images/splashScreen/Line 8.png",
                    transitionDuration: Duration(milliseconds: 1200),
                    transitionCurve: Curves.linear,
                    transitionDelay: Duration(milliseconds: 800),
                    transitionOffset: Offset(100.0, 0.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160, top: 5),
                  child: TransitionImage(
                    imagePath: "assets/images/splashScreen/store.png",
                    transitionDuration: Duration(milliseconds: 1200),
                    transitionCurve: Curves.easeInOut,
                    transitionDelay: Duration(milliseconds: 1100),
                    transitionOffset: Offset(0.0, -100.0),
                  ),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeIn,
            top: 0,
            right: 0,
            child: Image(
              image: const AssetImage("assets/images/splashScreen/time1.png"),
              fit: BoxFit.cover,
              height: ScreenUtil().setHeight(330),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            curve: Curves.easeInQuart,
            bottom: 0,
            left: 0,
            child: Image(
              image: const AssetImage("assets/images/splashScreen/time2.png"),
              fit: BoxFit.cover,
              height: ScreenUtil().setHeight(330),
            ),
          ),
        ],
      ),
      nextScreen: const SignUp(),
      duration: 1500,
      backgroundColor: const Color.fromRGBO(2, 84, 100, 1),
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      splashIconSize: ScreenUtil().setWidth(700),
    );
  }
}

class TransitionImage extends StatelessWidget {
  final String imagePath;
  final Duration transitionDuration;
  final Curve transitionCurve;
  final Duration transitionDelay;
  final Offset transitionOffset;

  const TransitionImage({
    Key? key,
    required this.imagePath,
    required this.transitionDuration,
    required this.transitionCurve,
    required this.transitionDelay,
    required this.transitionOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: transitionDuration,
      curve: transitionCurve,
      tween: Tween<double>(begin: 0, end: 1),
      onEnd: () {}, // Placeholder function, you can remove or replace with your own logic
      builder: (BuildContext context, double value, Widget? child) {
        return Transform.translate(
          offset: transitionOffset * (1 - value),
          child: Opacity(
            opacity: value,
            child: child ?? Container(),
          ),
        );
      },
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(imagePath),
      ),
    );
  }
}
