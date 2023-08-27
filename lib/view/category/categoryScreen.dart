import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/view/category/widgets/customAppBar.dart';
import 'package:watches_store_team_4/view/category/widgets/itemBuilder.dart';
import 'package:watches_store_team_4/view/home/widgets/defultSearch.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 44.h,
              ),
              CustomAppBar(text: title),
              SizedBox(
                height: 20.h,
              ),
              const DefultSearch(),
              SizedBox(
                height: 670.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return const ItemBuilder();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15.h,
                      );
                    },
                    itemCount: 9),
              )
            ],
          ),
        ),
      ),
    );
  }
}
