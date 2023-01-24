import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/widgets/myButton2.dart';
import 'package:netro_pay/widgets/popUp9.dart';

import '../../appColors/appColors.dart';

class ReviewSummary extends StatelessWidget {
  const ReviewSummary({super.key});

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
                          "Review Summary",
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
                                Container(
                                    height: 94.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Image.asset('assets/images/71.png'),
                                    )),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Divider(
                                    height: 1,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Container(
                                    height: 94.h,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: AppColors.white,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Image.asset('assets/images/72.png'),
                                    )),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Divider(
                                    height: 1,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Transfer Amount",
                                        style: TextStyle(
                                            color: AppColors.grey2,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\u0024" + "300.00",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Additional Fee",
                                        style: TextStyle(
                                            color: AppColors.grey2,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Free",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Divider(
                                    height: 1,
                                    color: AppColors.grey,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(
                                            color: AppColors.grey2,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "\u0024" + "300.00",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Text(
                                    "Estimated arrival: 3 business days Transfer made after 6.00pm ET or on weekends or holidays take longer. All transfer are subject to review & could be delayed or stopped, If we identify an issue.",
                                    style: TextStyle(
                                        color: AppColors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100.h),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: PopUp9())),
                  ]),
            ),
          ),
        )));
  }
}
