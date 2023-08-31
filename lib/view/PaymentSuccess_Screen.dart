import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/View/home/layout_screen.dart';
import 'package:watches_store_team_4/View/orders/orders_screen.dart';
import 'package:watches_store_team_4/utils/constant.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Envelope.png'),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Payment Success",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 28.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [AppStyle.defaultBoxShadow]),
              height: 39.h,
              width: 342.w,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrdersScreen()),
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: const Color.fromRGBO(2, 84, 100, 1),
                child: const Text(
                  "Track Order Status",
                  style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [AppStyle.defaultBoxShadow]),
              height: 39.h,
              width: 342.w,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LayOutScreen(),
                    ),
                  );
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.white,
                child: const Text(
                  "Back To Home",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff025464),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
