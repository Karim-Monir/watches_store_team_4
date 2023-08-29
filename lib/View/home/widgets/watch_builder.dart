import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/utils/constant.dart';

class WatchBuilder extends StatefulWidget {
  String photoPath;
  WatchBuilder({super.key, required this.photoPath});

  @override
  State<WatchBuilder> createState() => _WatchBuilderState();
}

class _WatchBuilderState extends State<WatchBuilder> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 163.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white, boxShadow: const [AppStyle.defaultBoxShadow]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.add),
                SizedBox(width: 73.w, height: 120.h, child: Image.asset(widget.photoPath)),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Icon(IconlyBold.heart,
                        color: isFavorite ? Colors.red : const Color.fromARGB(255, 236, 235, 235))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rolex Watch",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff1f1f1f),
                  ),
                ),
                AppStyle.costText(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
