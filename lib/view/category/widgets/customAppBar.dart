import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/utils/constant.dart';
import 'package:watches_store_team_4/view/home/layout_screen.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LayOutScreen(),
                    ));
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              width: 80.w,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff1f1f1f),
              ),
            )
          ],
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () {},
                child: const Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(
                      IconlyLight.notification,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: CircleAvatar(
                        radius: 3,
                        backgroundColor: AppStyle.kMainColor,
                      ),
                    )
                  ],
                )),
            SizedBox(
              width: 5.w,
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                IconlyLight.buy,
                color: Colors.black,
              ),
            )
          ],
        )
      ],
    );
  }
}
