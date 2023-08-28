import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/View/auth/login.dart';
import 'package:watches_store_team_4/View/auth/signUp.dart';
import 'package:watches_store_team_4/View/splash/Splash%20Screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(390, 812), // Provide your design size
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      initialRoute: splashScreen.routeName,
      routes: {
        splashScreen.routeName: (_) => splashScreen(),
        LoginScreen.routeName: (_) => const LoginScreen(),
        SignUp.routeName: (_) => const SignUp(),
      },
    );
  }
}
