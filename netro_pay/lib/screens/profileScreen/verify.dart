import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/profileScreen/otpProfile.dart';
import 'package:netro_pay/widgets/myButton.dart';

import 'package:netro_pay/widgets/popUp3.dart';

import '../../appColors/appColors.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: AppColors.black)),
                SizedBox(height: 80.h),
                Center(
                  child: Container(
                      height: 260.h,
                      width: 265.w,
                      child: Image.asset('assets/images/verify.png')),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Text(
                    "Let's verify your Identity",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      "We want to confirm your identity before you can use our service.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 150.h),
                Center(
                    child: MyButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpProfile()));
                        },
                        text: 'Continue'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
