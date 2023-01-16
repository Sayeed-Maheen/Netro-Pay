import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/authScreens/loginScreen.dart';
import '../../appColors/appColors.dart';
import '../../widgets/myButton.dart';

class MultipleLoginScreen extends StatelessWidget {
  const MultipleLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15.h),
              Container(
                  height: 265.h,
                  width: 260.w,
                  child: Image.asset("assets/images/multiple login.png")),
              SizedBox(height: 30.h),
              Text(
                "Let's you in",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 48.h,
                width: 287.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: AppColors.lightBlue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 25.h,
                      width: 25.w,
                      child: Image.asset('assets/images/facebook.png'),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 48.h,
                width: 287.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: AppColors.lightBlue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 30.w,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 48.h,
                width: 287.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: AppColors.lightBlue),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 20.h,
                      width: 20.w,
                      child: Image.asset('assets/images/apple.png'),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Continue with Apple ID",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.h,
                      width: 130.w,
                      child: Image.asset('assets/images/Line 1.png'),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "or",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      height: 40,
                      width: 130,
                      child: Image.asset('assets/images/Line 2.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
              MyButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  text: "SIGN IN WITH PASSWORD"),
              SizedBox(height: 10.h),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => SignUpScreen()));
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
    );
  }
}
