import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/utils/constant.dart';

class DefaultSearch extends StatelessWidget {
  const DefaultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 288.w,
            height: 44.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [AppStyle.defaultBoxShadow]),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  )),
            )),
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: AppStyle.kMainColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'assets/images/setting.png',
          ),
        ),
      ],
    );
  }
}
