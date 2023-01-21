import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/authScreens/forgotPassword/forgotPassword.dart';
import 'package:netro_pay/screens/authScreens/signUpScreen.dart';
import 'package:netro_pay/screens/homeScreen/homeScreen.dart';
import 'package:netro_pay/widgets/bottomNav.dart';
import 'package:netro_pay/widgets/rememberMe.dart';
import '../../appColors/appColors.dart';
import '../../widgets/myButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: AppColors.black)),
                  SizedBox(height: 50.h),
                  Center(
                    child: Container(
                      height: 93.h,
                      width: 198.w,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: Text(
                      "Login to your Account",
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Container(
                      height: 56.h,
                      width: 300.w,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your email here',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: Container(
                      height: 56.h,
                      width: 300.w,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RememberMe(),
                  SizedBox(height: 10.h),
                  Center(
                      child: MyButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyBottomNav()));
                          },
                          text: 'Sign In')),
                  SizedBox(height: 20.h),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            color: AppColors.themeColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.h,
                          width: 80.w,
                          child: Image.asset('assets/images/Line 1.png'),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "OR Continue With",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          height: 40,
                          width: 80,
                          child: Image.asset('assets/images/Line 2.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 32.h,
                          width: 32.w,
                          child: Image.asset('assets/images/facebook.png'),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          height: 40.h,
                          width: 40.w,
                          child: Image.asset('assets/images/google.png'),
                        ),
                        SizedBox(width: 8.w),
                        Container(
                          height: 33.h,
                          width: 33.w,
                          child: Image.asset('assets/images/apple.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5.w),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.themeColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
