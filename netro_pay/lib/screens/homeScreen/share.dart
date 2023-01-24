import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/payMoney.dart';
import '../../appColors/appColors.dart';

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
                      "Notifications",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New for You",
                      style: TextStyle(
                          color: AppColors.themeColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mark all as Read",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PayMoney()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 90.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 48.h,
                                      width: 48.w,
                                      child:
                                          Image.asset('assets/images/man4.png'),
                                    ),
                                    SizedBox(width: 10.w),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Payment Request from Pilu Santos",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          "Lorem Ipsum is simply dummy text of \nthe printing and typesetting industry......",
                                          style: TextStyle(
                                              color: AppColors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          "5 min ago",
                                          style: TextStyle(
                                              color: AppColors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 10.h,
                                  width: 10.w,
                                  decoration: BoxDecoration(),
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.red,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
