import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../appColors/appColors.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

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
                        "FAQ",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Have questions about Netropay? This section might help you find answers.",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.h),
                  Container(
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
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "What is Uddokta?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "How long does it take to complete the\ntransaction?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 82.h,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "What is Uddokta?",
                                      style: TextStyle(
                                          color: AppColors.grey2,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.remove,
                                      color: AppColors.green,
                                    )
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum has been \nthe industry's standard dummy text ever since the 1500s.",
                                  style: TextStyle(
                                      color: AppColors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "What is Cash In?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 50.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Form where I can Cash in my Netropay \nAccount?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "What is Cash Out?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "I am not able to cash out?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "What is send money?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Is there any charge for opening an account?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(height: 1, color: AppColors.grey),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 45.h,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "How can I know my transaction limits?",
                                  style: TextStyle(
                                      color: AppColors.grey2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
