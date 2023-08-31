import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardScreen extends StatefulWidget {
  static const String routeName = "card screen";

  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  var formKey = GlobalKey<FormState>();

  var cardNumberController = TextEditingController();

  var expirationDateController = TextEditingController();

  var cardholderNameController = TextEditingController();

  var cvvNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
                    ),
                    SizedBox(
                      width: 80.w,
                    ),
                    Text("My Card", style: TextStyle(fontSize: 28.sp, color: const Color.fromRGBO(31, 31, 31, 1))),
                  ],
                ),
                const Divider(thickness: 1, color: Colors.black),
                SizedBox(
                  height: 20.h,
                ),
                const Image(image: AssetImage("assets/images/myCard.png")),
                SizedBox(
                  height: 20.h,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: cardNumberController,
                        decoration: const InputDecoration(
                          hintText: "Enter Card Number",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ' Card Number must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //Expiration Data
                      TextFormField(
                        keyboardType: TextInputType.datetime,
                        controller: expirationDateController,
                        decoration: const InputDecoration(hintText: "Expiration Data"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ' Expiration Data must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //Cardholder Now
                      TextFormField(
                        keyboardType: TextInputType.text,
                        controller: cardholderNameController,
                        decoration: const InputDecoration(hintText: "Cardholder Now"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Cardholder Now must not be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      //CVV Number
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: cvvNumberController,
                        decoration: const InputDecoration(hintText: "CVV Number"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'CVV Number must not be empty';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50.h),
                //Pay Now
                MaterialButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const done()),
                      // );
                    }
                  },
                  color: const Color.fromRGBO(2, 84, 100, 1),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  minWidth: double.infinity,
                  height: 45.h,
                  child: const Text("Pay Now", style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
