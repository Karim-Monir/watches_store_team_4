import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/utils/constant.dart';

class NameOfCategory extends StatelessWidget {
  NameOfCategory({super.key, required this.onTap, @required this.width, required this.text});
  VoidCallback onTap;
  double? width = 74.w;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: const [AppStyle.defaultBoxShadow]),
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff1f1f1f),
            ),
          ),
        ),
      ),
    );
  }
}
