import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/view/home/widgets/profileItemBuilder.dart';

class AppStyle {
  static Color kBackground = const Color.fromARGB(249, 249, 249, 1);
  static const Color kMainColor = Color(0xff025464);

  static const BoxShadow defaultBoxShadow = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
  );

  static Widget defaultText({required String text}) => Text(
        text,
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff025464),
        ),
      );

  static Widget costText() => Text(
        "\$97",
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: const Color(0xff025464),
        ),
        textAlign: TextAlign.left,
      );

  static List<Widget> ProfileItem = [
    ProfileItemBuilder(
        icon: const Icon(
          CupertinoIcons.heart,
          color: Colors.white,
        ),
        description: 'See you favourite products',
        title: 'Favourites'),
    ProfileItemBuilder(
        icon: const Icon(
          Icons.language,
          color: Colors.white,
        ),
        description: 'Choose your languages',
        title: 'Languages'),
    ProfileItemBuilder(
        icon: const Icon(
          IconlyLight.profile,
          color: Colors.white,
        ),
        description: 'Change your account information',
        title: 'Profile'),
    ProfileItemBuilder(
        icon: const Icon(
          Icons.list,
          color: Colors.white,
        ),
        description: 'See order history',
        title: 'Orders'),
    ProfileItemBuilder(
        icon: const Icon(
          Icons.logout,
          color: Colors.white,
        ),
        description: '',
        title: 'Contact Us'),
    ProfileItemBuilder(
        icon: const Icon(
          Icons.logout,
          color: Colors.white,
        ),
        description: '',
        title: 'About Us'),
  ];
}
