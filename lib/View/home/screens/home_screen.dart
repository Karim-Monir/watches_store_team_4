import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/view/home/widgets/default_search.dart';

import '../../../utils/constant.dart';
import '../widgets/watch_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFavorite = false;
  int tileIndex = 0;
  List<String> tiles = ['All', 'Trending', 'Recent', 'Recommended'];
  List<String> watches = [
    'assets/images/watch2.png',
    'assets/images/watch3.png',
    'assets/images/watch4.png',
    'assets/images/watch5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.h,
            ),
            // Padding(
            //     padding: EdgeInsets.only(left: 26.w),
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: Icon(
            //         Icons.arrow_back_ios,
            //         size: 20.sp,
            //       ),
            //     )),
            // SizedBox(
            //   height: 12.h,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DefaultSearch(),
                  SizedBox(
                    height: 24.h,
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
                                  fontFamily: "Inter",
                                  fontSize: 28.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 9.h,
                            ),
                            SizedBox(
                              width: 170.w,
                              height: 46.h,
                              child: Text(
                                'collection offers a wide range of prestigious, high-precision timepieces',
                                style: TextStyle(
                                  color: Colors.white
                                      .withOpacity(0.800000011920929),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -5,
                        bottom: -20,
                        top: -40,
                        child: Image.asset(
                          'assets/images/watch1.png',
                          width: 210.w,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: double.infinity,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              tileIndex = index;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 4.w),
                                width: tileIndex == index ? 130 : 74,
                                height: tileIndex == index ? 35 : 34,
                                decoration: BoxDecoration(
                                  boxShadow: const [AppStyle.defaultBoxShadow],
                                  borderRadius: BorderRadius.circular(10),
                                  color: tileIndex == index
                                      ? const Color(0xFF025464)
                                      : Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    tiles[index],
                                    // overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: tileIndex == index
                                          ? Colors.white
                                          : const Color(0xCC1F1F1F),
                                      fontSize:
                                          tileIndex == index ? 20.sp : 16.sp,
                                      fontFamily: 'Inter',
                                      fontWeight: tileIndex == index
                                          ? FontWeight.w500
                                          : FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10.w,
                      ),
                      itemCount: tiles.length,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  AppStyle.defaultText(text: "Popular Item"),
                  SizedBox(
                    height: 290.h,
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                mainAxisExtent: 170,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10),
                        itemCount: watches.length,
                        itemBuilder: (context, index) {
                          return WatchBuilder(
                            photoPath: watches[index],
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// Column(
// //crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// //IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 26),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(
// height: 44.h,
// ),
// GestureDetector(
// onTap: () {},
// child: const Icon(Icons.arrow_back_ios),
// ),
// SizedBox(
// height: 10.h,
// ),
// const DefaultSearch(),
// SizedBox(
// height: 20.h,
// ),
// Stack(
// alignment: Alignment.centerRight,
// children: [
// Image.asset('assets/images/background.png'),
// Positioned(
// left: 10,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "New\nCollection",
// style: TextStyle(
// fontFamily: "Inter", fontSize: 28.sp, fontWeight: FontWeight.w700, color: Colors.white),
// ),
// SizedBox(
// height: 10.h,
// ),
// Text(
// "collection offers a wide range\nof prestigious, high-precision\ntimepieces",
// style: TextStyle(
// fontFamily: "Inter",
// fontSize: 12.sp,
// fontWeight: FontWeight.w400,
// color: const Color.fromARGB(255, 248, 248, 235),
// ),
// textAlign: TextAlign.left,
// ),
// SizedBox(
// height: 30.h,
// ),
// Container(
// width: 96.w,
// height: 33.h,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// border: Border.all(
// color: Colors.white,
// )),
// child: GestureDetector(
// onTap: () {},
// child: Center(
// child: Text(
// "Shop now",
// style: TextStyle(
// fontFamily: "Inter",
// fontSize: 16.sp,
// fontWeight: FontWeight.w500,
// color: Colors.white,
// ),
// textAlign: TextAlign.left,
// ),
// ),
// )),
// ],
// ),
// ),
// Positioned(
// right: 10,
// child: Image.asset(
// 'assets/images/watch1.png',
// width: 164.w,
// ))
// ],
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 26),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// SizedBox(
// height: 15.h,
// ),
// Row(
// children: [
// NameOfCategory(
// onTap: () {
// Navigator.push(context, MaterialPageRoute(
// builder: (context) {
// return CategoryScreen(title: 'All');
// },
// ));
// },
// text: 'All',
// width: 73.w,
// ),
// SizedBox(
// width: 8.w,
// ),
// NameOfCategory(
// onTap: () {
// Navigator.push(context, MaterialPageRoute(
// builder: (context) {
// return CategoryScreen(title: 'Trending');
// },
// ));
// },
// text: 'Trending',
// width: 73.w,
// ),
// SizedBox(
// width: 8.w,
// ),
// NameOfCategory(
// onTap: () {
// Navigator.push(context, MaterialPageRoute(
// builder: (context) {
// return CategoryScreen(title: 'Recent');
// },
// ));
// },
// text: 'Recent',
// width: 74.w,
// ),
// SizedBox(
// width: 8.w,
// ),
// NameOfCategory(
// onTap: () {
// Navigator.push(context, MaterialPageRoute(
// builder: (context) {
// return CategoryScreen(title: 'Recommended');
// },
// ));
// },
// text: 'Recommended',
// width: 110.w,
// ),
// ],
// ),
// SizedBox(
// height: 15.h,
// ),
// AppStyle.defaultText(text: "Popular Item"),
// SizedBox(
// height: 400.h,
// child: GridView.builder(
// scrollDirection: Axis.vertical,
// gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 200, mainAxisExtent: 170, crossAxisSpacing: 10, mainAxisSpacing: 10),
// itemCount: 4,
// itemBuilder: (BuildContext ctx, index) {
// return const WatchBuilder();
// }),
// )
// ],
// ),
// ),
// ],
// ),
