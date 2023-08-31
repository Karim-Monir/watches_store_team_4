import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/utils/constant.dart';

import '../../../view/home/layout_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 44.h,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const LayOutScreen();
                      },
                    ));
                  },
                  icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
                ),
                SizedBox(
                  width: 60.w,
                ),
                Text("Account Setting", style: TextStyle(fontSize: 28.sp, color: const Color.fromRGBO(31, 31, 31, 1))),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/person.png'),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Samer sameh",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Samer sameh211@gamil.com",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff1f1f1f),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                ExpandedTileList.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  maxOpened: 2,
                  reverse: false,
                  itemBuilder: (context, index, controller) {
                    return ExpandedTile(
                        theme: const ExpandedTileThemeData(
                          headerColor: Colors.transparent,
                          contentBackgroundColor: AppStyle.kMainColor,
                          contentPadding: EdgeInsets.all(12.0),
                          contentRadius: 12.0,
                        ),
                        controller: index == 2 ? controller.copyWith(isExpanded: true) : controller,
                        title: AppStyle.ProfileItem[index],
                        content: Container(
                          decoration:
                              BoxDecoration(color: AppStyle.kMainColor, borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              const Center(
                                child: Text(
                                  "watting",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  controller.collapse();
                                },
                              )
                            ],
                          ),
                        ));
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      const Icon(CupertinoIcons.arrow_turn_down_right),
                      SizedBox(
                        width: 20.w,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
