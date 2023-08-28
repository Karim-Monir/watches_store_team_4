import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:watches_store_team_4/utils/constant.dart';
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
            elevation: 10,
            currentIndex: currentIndex,
            selectedItemColor: AppStyle.kMainColor,
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  IconlyBold.home,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconlyBold.scan,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconlyBold.buy,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    IconlyBold.profile,
                  ),
                  label: '')
            ]),
      ),
    );
  }
}
