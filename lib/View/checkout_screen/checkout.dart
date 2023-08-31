import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watches_store_team_4/View/orders/orders_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int activeIndex = 0;
  List<String> cards = [
    'assets/images/checkout/card1.png',
    'assets/images/checkout/card1.png',
    'assets/images/checkout/card1.png',
  ];

  Widget imageBuilder(String path, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0.w),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget indicatorBuilder() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: cards.length,
      effect: JumpingDotEffect(
        dotHeight: 9.h,
        dotWidth: 9.w,
        dotColor: const Color(0xFFD9D9D9),
        activeDotColor: const Color(0xFF025464),
        spacing: 4.sp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        children: [
          SizedBox(
            height: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.sp,
              right: 22.sp,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 20.sp,
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: const Color(0xFF1F1F1F),
                        fontSize: 28.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.sp),
                child: Divider(
                  //color: const Color(0x1F1F1FCC),
                  thickness: 2.sp,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.sp,
                ),
                child: SizedBox(
                  width: 221.w,
                  height: 23.h,
                  child: Text(
                    'Select your payment method',
                    style: TextStyle(
                      color: const Color(0xE51F1F1F),
                      fontSize: 16.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 89.64.w,
                    height: 59.76.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/checkout/paypal.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50.sp, color: const Color(0xE51F1F1F)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 89.64.w,
                    height: 59.76.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/checkout/wallet.png',
                          ),
                          fit: BoxFit.cover),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50.sp, color: const Color(0xE51F1F1F)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 89.64.w,
                    height: 59.76.h,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/checkout/apple.png',
                          ),
                          fit: BoxFit.cover),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.50.sp, color: const Color(0xE51F1F1F)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CarouselSlider.builder(
                  itemCount: cards.length,
                  itemBuilder: (context, index, realIndex) {
                    final image = cards[index];
                    return imageBuilder(image, index);
                  },
                  options: CarouselOptions(
                    height: 216.h,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    enableInfiniteScroll: false,
                    pageSnapping: true,
                    onPageChanged: (index, reason) => setState(() => activeIndex = index),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              indicatorBuilder(),
            ],
          ),
          SizedBox(
            height: 32.5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.add),
                      Text(
                        'or add a new card',
                        style: TextStyle(
                          color: const Color(0xE51F1F1F),
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1.sp,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: const Color(0xE51F1F1F),
                    fontSize: 20.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\$248',
                  style: TextStyle(
                    color: const Color(0xFF025464),
                    fontSize: 20.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 51.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OrdersScreen()),
              );
            },
            child: Container(
              width: ScreenUtil().screenWidth,
              height: 39.h,
              margin: EdgeInsets.symmetric(horizontal: 24.w),
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: const Color(0xFF025464),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
