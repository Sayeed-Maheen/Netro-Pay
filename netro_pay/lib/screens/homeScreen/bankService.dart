import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/transferBank.dart';
import 'package:netro_pay/screens/nidBack.dart';
import 'package:netro_pay/widgets/myButton.dart';
import 'package:netro_pay/widgets/myButton2.dart';

import '../../appColors/appColors.dart';

class BankService extends StatelessWidget {
  const BankService({super.key});

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
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/61.png'),
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/62.png'),
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/63.png'),
                    )),
                SizedBox(height: 10.h),
                Container(
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/64.png'),
                    )),
                SizedBox(height: 200.h),
                Container(
                    height: 52.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Add New Card",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                SizedBox(height: 15.h),
                Center(
                    child: MyButton2(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TransferToBank()));
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
