import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 1;
  bool isLiked = false;
  List<String> watches = [
    'assets/images/watch2.png',
    'assets/images/watch3.png',
    'assets/images/watch4.png',
    'assets/images/watch5.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 52,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                  width: 84.w,
                  ),
                  Center(
                  child: Text(
                    'My order',
                    style: TextStyle(
                      color: const Color(0xFF1F1F1F),
                      fontSize: 28.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
              height: 14.h,
              ),
              SizedBox(
                height: 417.h,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        SlidableAction(
                          onPressed: (context) {},
                          backgroundColor: const Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: 'Delete',
                        ),
                        // SlidableAction(
                        //   onPressed: (context) {},
                        //   backgroundColor: const Color(0xFF21B7CA),
                        //   foregroundColor: Colors.white,
                        //   icon: Icons.share,
                        //   label: 'Share',
                        // ),
                      ],
                    ),
                    child: Container(
                      width: ScreenUtil().screenWidth,
                      height: 122,
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
                      child: Row(
                        children: [
                          SizedBox(
                            width: 75.w,
                            child: Image.asset(watches[index]),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Rolex Watch',
                                style: TextStyle(
                                  color: const Color(0xFF1F1F1F),
                                  fontSize: 16.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                width: 37,
                                height: 18,
                                child: Text(
                                  '\$85',
                                  style: TextStyle(
                                    color: const Color(0xFF025464),
                                    fontSize: 16.sp,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.amberAccent,
                                  ),
                                  Text(
                                    '4.9',
                                    style: TextStyle(
                                      color: const Color(0xB21F1F1F),
                                      fontSize: 14.sp,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 14,
                                top: 15,
                                bottom: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    //visualDensity: VisualDensity.compact,
                                    onPressed: () {
                                      setState(() {
                                        isLiked = !isLiked;
                                      });
                                    },
                                    icon: isLiked == true
                                        ? const Icon(
                                            CupertinoIcons.heart_fill,
                                            size: 20,
                                            color: Colors.red,
                                          )
                                        : Icon(
                                            CupertinoIcons.heart,
                                            size: 20.sp,
                                          ),
                                  ),
                                  Container(
                                    width: 125.w,
                                    height: 25.h,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.5.w,
                                            color: const Color(0xFF025464)),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.remove,
                                            size: 10.sp,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              count--;
                                            });
                                          },
                                        ),
                                        Text(count.toString()),
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                count++;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.add,
                                              size: 10.sp,
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.h,
                ),
                itemCount: watches.length,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Order Summary',
                  style: TextStyle(
                    color: const Color(0xFF1F1F1F),
                    fontSize: 24.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
              height: 19.h,
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: const Color(0xE51F1F1F),
                    fontSize: 20.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
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
                  ),
                ],
              ),
              SizedBox(
              height: 48.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 39.h,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF025464),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
