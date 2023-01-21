import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/profileScreen/fingerprint.dart';
import 'package:netro_pay/widgets/myButton.dart';
import 'package:netro_pay/widgets/otpWidget.dart';
import '../../appColors/appColors.dart';

class OtpProfile extends StatelessWidget {
  const OtpProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Text(
                      "Create New PIN",
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
                        "Add a PIN Number to make your account more secure.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.grey2,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  SizedBox(height: 80.h),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: OtpWidget(),
                  ),
                  SizedBox(height: 250.h),
                  Center(
                      child: MyButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FingerPrint()));
                          },
                          text: 'Continue'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
