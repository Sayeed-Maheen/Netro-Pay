import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/nidBack.dart';
import 'package:netro_pay/widgets/myButton.dart';
import 'package:netro_pay/widgets/popUp3.dart';
import '../appColors/appColors.dart';

class TakePicture extends StatelessWidget {
  const TakePicture({super.key});

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
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: AppColors.black)),
                    SizedBox(width: 10.w),
                    Text(
                      "Verify Account",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    "Upload Front side of NID",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12.h),
                Center(
                  child: Text(
                    "Take a photo of the front side of your identity card",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 80.h),
                Center(
                  child: Container(
                      height: 170.h,
                      width: 260.w,
                      child: Image.asset('assets/images/front.png')),
                ),
                SizedBox(height: 200.h),
                Center(
                    child: MyButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NidBack()));
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
