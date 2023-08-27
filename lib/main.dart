import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/View/Splash%20Screen.dart';
import 'package:watches_store_team_4/View/login.dart';
import 'package:watches_store_team_4/View/signUp.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
      designSize: const Size(375, 812), // Provide your design size
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
        loginScreen.routeName: (_) => loginScreen(),
        signUp.routeName: (_) => signUp(),
      },
    );
  }
}

