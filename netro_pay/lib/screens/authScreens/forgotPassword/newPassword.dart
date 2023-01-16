import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/authScreens/forgotPassword/forgotPassword.dart';
import 'package:netro_pay/screens/authScreens/signUpScreen.dart';
import 'package:netro_pay/widgets/popUp2.dart';
import 'package:netro_pay/widgets/rememberMe.dart';

import '../../../appColors/appColors.dart';
import '../../../widgets/myButton.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back, color: AppColors.black)),
                      SizedBox(width: 10),
                      Text(
                        "Create New Password",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h),
                  Center(
                    child: Container(
                      height: 265.h,
                      width: 260.w,
                      child: Image.asset('assets/images/newpass.png'),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: Text(
                      "Create New Password",
                      style: TextStyle(
                          color: AppColors.black,
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
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter New Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: AppColors.lightBlue),
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
                          hintText: 'Confirm New Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: AppColors.lightBlue),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  RememberMe(),
                  SizedBox(height: 10.h),
                  Center(child: PopUp2())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
