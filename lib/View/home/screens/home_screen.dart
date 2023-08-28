import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/utils/constant.dart';
import 'package:watches_store_team_4/view/category/categoryScreen.dart';
import 'package:watches_store_team_4/view/home/widgets/default_search.dart';
import 'package:watches_store_team_4/view/home/widgets/name_category.dart';
import 'package:watches_store_team_4/view/home/widgets/watch_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const DefaultSearch(),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.asset('assets/images/background.png'),
                    Positioned(
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New\nCollection",
                            style: TextStyle(
                                fontFamily: "Inter", fontSize: 28.sp, fontWeight: FontWeight.w700, color: Colors.white),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "collection offers a wide range\nof prestigious, high-precision\ntimepieces",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 248, 248, 235),
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          Container(
                              width: 96.w,
                              height: 33.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  )),
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "Shop now",
                                    style: TextStyle(
                                      fontFamily: "Inter",
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Positioned(
                        right: 10,
                        child: Image.asset(
                          'assets/images/watch1.png',
                          width: 164.w,
                        ))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    NameOfCategory(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CategoryScreen(title: 'All');
                          },
                        ));
                      },
                      text: 'All',
                      width: 73.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    NameOfCategory(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CategoryScreen(title: 'Trending');
                          },
                        ));
                      },
                      text: 'Trending',
                      width: 73.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    NameOfCategory(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CategoryScreen(title: 'Recent');
                          },
                        ));
                      },
                      text: 'Recent',
                      width: 74.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    NameOfCategory(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return CategoryScreen(title: 'Recommended');
                          },
                        ));
                      },
                      text: 'Recommended',
                      width: 110.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                AppStyle.defaultText(text: "Popular Item"),
                SizedBox(
                  height: 400.h,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200, mainAxisExtent: 170, crossAxisSpacing: 10, mainAxisSpacing: 10),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return const WatchBuilder();
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
