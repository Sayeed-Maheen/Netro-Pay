import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/profileScreen/otpProfile.dart';
import 'package:netro_pay/widgets/myButton.dart';
import 'package:netro_pay/widgets/popUp.dart';
import 'package:netro_pay/widgets/popUp5.dart';

import '../../appColors/appColors.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

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
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    "Set Your Fingerprint",
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
                      "Add a fingerprint to make your account more secure.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
                Center(
                  child: Container(
                      height: 160.h,
                      width: 160.w,
                      child: Image.asset('assets/images/fingerprint.png')),
                ),
                SizedBox(height: 50.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Center(
                    child: Text(
                      "Please put your finger on the fingerprint scanner to get started.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.grey2,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 160.h),
                Center(
                    child: Row(
                  children: [
                    Container(
                      height: 52.h,
                      width: 158.w,
                      decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Skip",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    PopUp5()
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
