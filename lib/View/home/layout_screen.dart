import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/view/home/screens/cart_screen.dart';
import 'package:watches_store_team_4/view/home/screens/home_screen.dart';
import 'package:watches_store_team_4/view/home/screens/profile_screen.dart';
import 'package:watches_store_team_4/view/home/screens/scan_screen.dart';

class LayOutScreen extends StatefulWidget {
  const LayOutScreen({super.key});

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  int currentIndex = 0;

  List<Widget> screenView = [
    const HomeScreen(),
    const ScanScreen(),
    const CartPage(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenView[currentIndex],
      bottomNavigationBar: Container(
        width: ScreenUtil().scaleWidth,
        height: 60.h,
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, -2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: currentIndex == 0
                  ? const Icon(
                      IconlyBold.home,
                      color: Color(0xFF025464),
                      size: 25,
                    )
                  : const Icon(
                      IconlyBold.home,
                      size: 20,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              icon: currentIndex == 1
                  ? const Icon(
                      IconlyBold.scan,
                      color: Color(0xFF025464),
                      size: 25,
                    )
                  : const Icon(
                      IconlyBold.scan,
                      size: 20,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              icon: currentIndex == 2
                  ? const Icon(
                      Icons.shopping_cart_rounded,
                      color: Color(0xFF025464),
                      size: 25,
                    )
                  : const Icon(
                      Icons.shopping_cart_outlined,
                      size: 20,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  currentIndex = 3;
                });
              },
              icon: currentIndex == 3
                  ? const Icon(
                      IconlyBold.profile,
                      color: Color(0xFF025464),
                      size: 25,
                    )
                  : const Icon(
                      IconlyBold.profile,
                      size: 20,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// ClipRRect(
// borderRadius: const BorderRadius.only(
// topLeft: Radius.circular(30.0),
// topRight: Radius.circular(30.0),
// ),
// child: BottomNavigationBar(
// elevation: 10,
// currentIndex: currentIndex,
// selectedItemColor: AppStyle.kMainColor,
// unselectedItemColor: Colors.grey,
// selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
// onTap: (value) {
// setState(() {
// currentIndex = value;
// });
// },
// items: const [
// BottomNavigationBarItem(
// icon: Icon(
// IconlyBold.home,
// ),
// label: '',
// ),
// BottomNavigationBarItem(
// icon: Icon(
// IconlyBold.scan,
// ),
// label: ''),
// BottomNavigationBarItem(
// icon: Icon(
// IconlyBold.buy,
// ),
// label: ''),
// BottomNavigationBarItem(
// icon: Icon(
// IconlyBold.profile,
// ),
// label: '')
// ]),
// )
