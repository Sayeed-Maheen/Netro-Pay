import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/wifi.dart';
import '../../appColors/appColors.dart';

class PayBill extends StatelessWidget {
  const PayBill({super.key});

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
                          "Pay Bill",
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
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Wifi()));
                                    },
                                    child: Container(
                                        height: 230.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              'assets/images/81.png'),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.h),
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10.h),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          "All Organization",
                                          style: TextStyle(
                                              color: AppColors.grey2,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: TextField(
                                          decoration: new InputDecoration(
                                            prefixIcon: Icon(Icons.search),
                                            labelText:
                                                "Search Organization Name",
                                            // hintText: "Mother's Name",
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Container(
                                          height: 450.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                                'assets/images/82.png'),
                                          )),
                                    ],
                                  ),
                                )),
                          ]),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
