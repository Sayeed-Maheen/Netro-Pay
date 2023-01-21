import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../appColors/appColors.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  State<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
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
                      "Share Payment Info",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 100.h),
                Center(
                  child: Container(
                      height: 265.h,
                      width: 260.w,
                      child: Image.asset('assets/images/qr.png')),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: Text(
                    "https://netropay.domain/AlexBaker",
                    style: TextStyle(
                        color: AppColors.themeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 12.h),
                Center(
                  child: Text(
                    "alex_baker@yourmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 12.h),
                Center(
                  child: Text(
                    "@alex_baker",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          "Copy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          backgroundColor: AppColors.white,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.0),
                              topRight: Radius.circular(24.0),
                            ),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.30,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: SizedBox(
                                  //height: 10.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      SizedBox(height: 1.5.h),
                                      Center(
                                        child: Text(
                                          'Send to',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Divider(
                                        height: 1,
                                        color: AppColors.grey,
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                    'assets/images/facebook2.png'),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Facebook',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/whatsapp.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Whatsapp',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/twitter.png',
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Twitter',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/insta.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Instagram',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 20.h),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                    'assets/images/facebook2.png'),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Facebook',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/whatsapp.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Whatsapp',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/twitter.png',
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Twitter',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(width: 20.w),
                                          Column(
                                            children: [
                                              Container(
                                                height: 36.h,
                                                width: 36.w,
                                                child: Image.asset(
                                                  'assets/images/insta.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Instagram',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 50.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            color: AppColors.themeColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Share",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
