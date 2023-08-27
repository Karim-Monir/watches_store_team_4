import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/View/signUp.dart';

class loginScreen extends StatefulWidget {
  static const String routeName = 'login screen';

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
       toolbarHeight: ScreenUtil().setWidth(170),
       shape:RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(30),
         side: const BorderSide(color:Colors.white70,)
       ),
       leading: IconButton(onPressed: (){
         Navigator.pushNamed(context, signUp.routeName);
       },
           icon:const Icon( Icons.arrow_back_ios_outlined,color: Colors.black,)),
       title:  Padding(
         padding: const EdgeInsets.only(
           top: 100,
           bottom: 10
         ),
         child: Text("Welcome Back!",style: TextStyle(color: const Color.fromRGBO(2, 84, 100, 1),fontSize: ScreenUtil().setSp(29))),
       ),
     ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 55,
            left: 26,
            right: 26,
          ),
          child: Form(
            key: formKey,
            child: Column(
                children: [
                 //Email
                 TextFormField(
                   keyboardType: TextInputType.emailAddress,
                   controller:emailController,
                   decoration: const InputDecoration(
                     prefixIcon: Icon(Icons.email_outlined),
                     hintText: "Email",

                   ),

                   validator: (value) {
                     if (value!.isEmpty) {
                       return ' Email address must not be empty';
                     }
                     return null;
                   },
                 ),
                  //password
                   SizedBox(height:ScreenUtil().setHeight(15),),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller:passwordController,
                    obscureText:isPasswordVisible? false : true ,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline_rounded),
                      suffixIcon:isPasswordVisible? IconButton(onPressed: (){ setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });},icon: const Icon(Icons.remove_red_eye_outlined)):IconButton(onPressed: (){ setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });},icon: const Icon(Icons.visibility_off_outlined,
                      )),
                      hintText: "Password",

                    ),

                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Password must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: ScreenUtil().setHeight(10),),
                  //forget password?
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 50
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Text("forget password?",style: TextStyle(color: Color.fromRGBO(2, 84, 100, 1))),
                    ],),
                  ),
                  //Sign in
                  MaterialButton(onPressed: (){
                    if (formKey.currentState!.validate()) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => homeLayout()),
                      // );
                    }
                  },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    color: const Color.fromRGBO(2, 84, 100, 1),
                    minWidth: double.infinity,
                    height: ScreenUtil().setHeight(45),
                    child: const Text("Sign in",style: TextStyle(color: Colors.white)),
                  ),
                   SizedBox(
                    height: ScreenUtil().setHeight(20),
                  ),
                  //facebook, google & apple
                   Column(
                    children: [
                      const Image(image: AssetImage("assets/images/signUp/or.png")),
                      SizedBox(
                        height: ScreenUtil().setHeight(15),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: const AssetImage("assets/images/signUp/facebook.PNG"),height: ScreenUtil().setHeight(50),),
                          Image(image: const AssetImage("assets/images/signUp/google.PNG"),height: ScreenUtil().setHeight(50)),
                          Image(image: const AssetImage("assets/images/signUp/apple.PNG"),height: ScreenUtil().setHeight(50)),
                        ],
                      ),
                    ],
                  ),
                   SizedBox(
                    height: ScreenUtil().setHeight(15),
                  ),
                  //Don’t have an account? sign up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t have an account?"),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, signUp.routeName);
                      }, child: const Text("sign up",style: TextStyle(color: Color.fromRGBO(2, 84, 100, 1)),))
                    ],
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
