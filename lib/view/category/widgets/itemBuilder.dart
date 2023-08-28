import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/utils/constant.dart';

class ItemBuilder extends StatefulWidget {
  const ItemBuilder({super.key});

  @override
  State<ItemBuilder> createState() => _ItemBuilderState();
}

class _ItemBuilderState extends State<ItemBuilder> {
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 342.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: const [AppStyle.defaultBoxShadow]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/1.png'),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Citizen Watch",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff1f1f1f),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AppStyle.costText(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: GestureDetector(
                  onTap: () async {
                    setState(() {
                      isfavorite = !isfavorite;
                    });
                  },
                  child: Icon(IconlyBold.heart,
                      color: isfavorite ? Colors.red : const Color.fromARGB(255, 236, 235, 235))),
            ),
          ],
        ),
      ),
    );
  }
}
