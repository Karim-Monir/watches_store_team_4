import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watches_store_team_4/View/auth/login.dart';
import 'package:watches_store_team_4/view/home/layout_screen.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'sign screen';

  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;

  bool isConfirmPasswordVisible = false;

  bool value = false;
  bool isChecked = false;

  void validateCheckbox() {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: ScreenUtil().setHeight(170),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(
              color: Colors.white70,
            )),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 40,
          ),
          child: Text("Create Account",
              style: TextStyle(color: const Color.fromRGBO(2, 84, 100, 1), fontSize: ScreenUtil().setSp(30))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 26,
            right: 26,
          ),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                //name
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.perm_identity_sharp),
                    hintText: "Name",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Name must not be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                //Email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
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
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: passwordController,
                  obscureText: isPasswordVisible ? false : true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: isPasswordVisible
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            icon: const Icon(
                              Icons.visibility_off_outlined,
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
                //Confirm Password
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: confirmPasswordController,
                  obscureText: isConfirmPasswordVisible ? false : true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: isConfirmPasswordVisible
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordVisible = !isConfirmPasswordVisible;
                              });
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined))
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordVisible = !isConfirmPasswordVisible;
                              });
                            },
                            icon: const Icon(
                              Icons.visibility_off_outlined,
                            )),
                    hintText: "Confirm Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ' Confirm Password must not be empty';
                    }
                    return null;
                  },
                ),
                //Agree to terms and conditions
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (bool? newValue) {
                        setState(() {
                          value = newValue!;
                          isChecked = false; // Reset validation flag when Checkbox value changes
                        });
                      },
                    ),
                    const Text("Agree to terms and conditions"),
                    if (!isChecked)
                      Text(
                        '  *', // Error message
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: ScreenUtil().setSp(12),
                        ),
                      ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                //Sign up
                MaterialButton(
                  onPressed: () {
                    validateCheckbox();
                    if (formKey.currentState!.validate() && isChecked) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LayOutScreen()),
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  color: const Color.fromRGBO(2, 84, 100, 1),
                  minWidth: double.infinity,
                  height: ScreenUtil().setHeight(45),
                  child: const Text("Sign Up", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
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
                        Image(
                          image: const AssetImage("assets/images/signUp/facebook.PNG"),
                          height: ScreenUtil().setHeight(50),
                        ),
                        Image(
                            image: const AssetImage("assets/images/signUp/google.PNG"),
                            height: ScreenUtil().setHeight(50)),
                        Image(
                            image: const AssetImage("assets/images/signUp/apple.PNG"),
                            height: ScreenUtil().setHeight(50)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                //Already have an account? sign In
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                        child: const Text(
                          "sign In",
                          style: TextStyle(color: Color.fromRGBO(2, 84, 100, 1)),
                        ))
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
