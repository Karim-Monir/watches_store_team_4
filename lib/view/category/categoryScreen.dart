import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/view/category/widgets/customAppBar.dart';
import 'package:watches_store_team_4/view/category/widgets/itemBuilder.dart';
import 'package:watches_store_team_4/view/home/widgets/default_search.dart';
import 'package:watches_store_team_4/view/product_details/product_details.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key, required this.title});
  String title;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 44.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: CustomAppBar(text: widget.title),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: DefaultSearch(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: SizedBox(
                height: 670.h,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ProductDetails();
                              },
                            ));
                          },
                          child: const ItemBuilder());
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15.h,
                      );
                    },
                    itemCount: 9),
              ),
            )
          ],
        ),
      ),
    );
  }
}
