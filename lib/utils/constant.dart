import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static Color KBackground = const Color.fromARGB(249, 249, 249, 1);
  static const Color kmainColor = Color(0xff025464);

  static const BoxShadow defultBoxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
  );

  static Widget defultText({required String text}) => Text(
        text,
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff025464),
        ),
      );

  static Widget CostText() => Text(
        "\$97",
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff025464),
        ),
        textAlign: TextAlign.left,
      );
}
