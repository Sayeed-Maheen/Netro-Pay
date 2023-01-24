import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/reviewSummary.dart';
import 'package:netro_pay/widgets/myButton2.dart';

import '../../appColors/appColors.dart';

class TransferToBank extends StatelessWidget {
  const TransferToBank({super.key});

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
                          "Transfer to Your Bank",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Text(
                                    "Enter the Transfer Amount",
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: TextField(
                                    decoration: new InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.lightBlue,
                                                width: 1.w),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColors.lightBlue,
                                                width: 1.w),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        hintText: '300',
                                        hintStyle: TextStyle(
                                          color: AppColors.themeColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                        )),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: AppColors.lightBlue)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 12),
                                      child: Text(
                                        "Hello Alexar Usuf, I would like to request my payment for the work on a design project the other day. I hope to get paid soon. Thank you",
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
                          SizedBox(height: 200.h),
                          Center(
                              child: MyButton2(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReviewSummary()));
                            },
                            text: 'Continue',
                          )),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        )));
  }
}
