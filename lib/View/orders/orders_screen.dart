import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<String> orders = [
    'Order 226677',
    'Order 226678',
    'Order 226679',
  ];
  Widget buildSheet(List<dynamic> list, int index) => Container(
        width: ScreenUtil().screenWidth,
        height: 501.h,
        padding: EdgeInsets.fromLTRB(24.w, 13.h, 25.w, 13.h),
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: Color(0xCC025464)),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              // bottomLeft: Radius.circular(20),
              // bottomRight: Radius.circular(20),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 0,
              offset: Offset(5, 20),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order ID : ${list[index]}  #',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Items ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 62.w,
                  height: 52.h,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/watch_2.png'),
                    ),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Text(
                  '\$99',
                  style: TextStyle(
                    color: const Color(0xFF025464),
                    fontSize: 16.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.w, 13.h, 13.w, 10.h),
              width: 341.w,
              height: 73.h,
              decoration: ShapeDecoration(
                color: const Color(0x1CD9D9D9),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.50, color: Color(0xFF025464)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 65.34,
                        child: Text(
                          'Subtotal',
                          style: TextStyle(
                            color: const Color(0xE51F1F1F),
                            fontSize: 16.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        '\$99',
                        style: TextStyle(
                          color: const Color(0xFF025464),
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment Type',
                        style: TextStyle(
                          color: const Color(0xE51F1F1F),
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Visa',
                        style: TextStyle(
                          color: const Color(0xCC1F1F1F),
                          fontSize: 16.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            EasyStepper(
              activeStep: 8,
              lineLength: 39.w,
              stepShape: StepShape.rRectangle,
              defaultLineColor: Colors.black.withOpacity(0.3100000023841858),
              activeStepBorderColor: Colors.transparent,
              stepBorderRadius: 10,
              stepRadius: 18,
              enableStepTapping: false,
              lineType: LineType.dotted,
              showStepBorder: true,
              disableScroll: false,
              steps: <EasyStep>[
                EasyStep(
                    customStep: Container(
                      width: 36.w,
                      height: 34.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF025464),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                    ),
                    customTitle: Text(
                      'Placed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xB21F1F1F),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                EasyStep(
                  customStep: Container(
                    width: 36.w,
                    height: 34.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF025464),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 30.sp,
                    ),
                  ),
                  customTitle: Text(
                    'Checking\n  Stocks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xB21F1F1F),
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                EasyStep(
                    customStep: Container(
                      width: 36.w,
                      height: 34.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF025464),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                    ),
                    customTitle: Text(
                      'Confirmed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xB21F1F1F),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                EasyStep(
                    customStep: Container(
                      width: 36.w,
                      height: 34.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF025464),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 30.sp,
                      ),
                    ),
                    customTitle: Text(
                      'Prepared',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xB21F1F1F),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                EasyStep(
                    customStep: Container(
                      width: 36.w,
                      height: 34.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    customTitle: Text(
                      'Shipped',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xB21F1F1F),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                EasyStep(
                    customStep: Container(
                      width: 36,
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                    customTitle: Text(
                      'Delivered',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xB21F1F1F),
                        fontSize: 12.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ],
            ),
          ],
        ),
      );
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
                height: 34.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.sp,
                ),
                child: SizedBox(
                    width: 221.w,
                    height: 23.h,
                    child: Text(
                      'Active Orders',
                      style: TextStyle(
                        color: const Color(0xFF025464),
                        fontSize: 20.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    )),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => buildSheet(orders, index),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.w),
                    height: 75.h,
                    width: ScreenUtil().screenWidth,
                    child: Row(
                      children: [
                        Image.asset('assets/images/orders/order.png'),
                        SizedBox(
                          width: 18.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              orders[index],
                              style: TextStyle(
                                color: const Color(0xFF1F1F1F),
                                fontSize: 16.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Prepared',
                              style: TextStyle(
                                color: const Color(0xFF025464),
                                fontSize: 20.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '21 / 02 / 2023   04:52 AM',
                              style: TextStyle(
                                color: const Color(0xB21F1F1F),
                                fontSize: 12.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 10.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
