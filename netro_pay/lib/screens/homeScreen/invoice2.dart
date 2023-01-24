import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/widgets/popUp6.dart';
import 'package:netro_pay/widgets/popUp7.dart';
import '../../appColors/appColors.dart';

class InVoice2 extends StatelessWidget {
  const InVoice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
                      SizedBox(width: 10.w),
                      Text(
                        "Send a Quick Invoice",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Enter the Amount",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: TextField(
                            decoration: new InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.lightBlue, width: 1.w),
                                    borderRadius: BorderRadius.circular(12)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.lightBlue, width: 1.w),
                                    borderRadius: BorderRadius.circular(12)),
                                hintText: '150',
                                hintStyle: TextStyle(
                                  color: AppColors.themeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                )),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Add a Note (Optional)",
                            style: TextStyle(
                                color: AppColors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: AppColors.lightBlue)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              child: Text(
                                "Hello Pilu Santos, I would like to request my payment for the work on a design project the other day. I hope to get paid soon. Thank you",
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                  SizedBox(height: 150.h),
                  Center(child: PopUp7()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
