import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/widgets/myButton.dart';
import 'package:netro_pay/widgets/popUp10.dart';
import 'package:netro_pay/widgets/popUp9.dart';
import '../../appColors/appColors.dart';

class Wifi extends StatelessWidget {
  const Wifi({super.key});

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
                                  SizedBox(height: 10.h),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             InVoice2()));
                                    },
                                    child: Container(
                                        height: 123.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                              'assets/images/83.png'),
                                        )),
                                  ),
                                  SizedBox(height: 10.h),
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
                                          "Pay Bill To",
                                          style: TextStyle(
                                              color: AppColors.grey2,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                                'assets/images/84.png'),
                                          )),
                                      SizedBox(height: 10.h),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
                                            labelText: "Enter Subscriber ID",
                                            // hintText: "Mother's Name",
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
                                            labelText: "Enter Contact Number",
                                            // hintText: "Mother's Name",
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
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
                                            labelText: "Amount",
                                            // hintText: "Mother's Name",
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                )),
                          ]),
                    ),
                    SizedBox(height: 70.h),
                    Center(
                        child: MyButton(
                            onPressed: () {
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
                                    height: MediaQuery.of(context).size.height *
                                        0.40,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: SizedBox(
                                        //height: 10.h,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 10.h),
                                            Center(
                                              child: Text(
                                                'Payment Summary',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.black,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Padding(
                                              padding: const EdgeInsets.all(12),
                                              child: Divider(
                                                height: 1,
                                                color: AppColors.grey,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Internet Bill Pay',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors.grey2,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    "\u0024" + "60",
                                                    style: TextStyle(
                                                        color: AppColors.black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 10),
                                              child: Text(
                                                'If you are Pay money for Internet bill, you will pay a seller fee when Daniel Dason pays you. You could be covered bay Seller Protection.',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: AppColors.grey2,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            PopUp10()
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            text: 'Pay Now'))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
