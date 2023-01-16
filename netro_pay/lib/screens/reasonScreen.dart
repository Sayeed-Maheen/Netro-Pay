import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/appColors/appColors.dart';
import 'package:netro_pay/widgets/myButton.dart';

class ReasonScreen extends StatefulWidget {
  @override
  ReasonScreenState createState() {
    return new ReasonScreenState();
  }
}

class ReasonScreenState extends State<ReasonScreen> {
  bool? check1 = false,
      check2 = false,
      check3 = false,
      check4 = false,
      check5 = false,
      check6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: AppColors.black)),
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    "Reason for using Netropay",
                    style: TextStyle(
                        color: AppColors.grey2,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Text(
                    "We want to provide the best experience\naccording to your needs.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10.h),
                CheckboxListTile(
                  value: check1,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                    });
                  },
                  title: Text(
                    "Make Online Payments",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CheckboxListTile(
                  value: check2,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
                    });
                  },
                  title: Text(
                    "Spend or save daily",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CheckboxListTile(
                  value: check3,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check3 = value;
                    });
                  },
                  title: Text(
                    "Gain exposure to financial assets",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CheckboxListTile(
                  value: check4,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check4 = value;
                    });
                  },
                  title: Text(
                    "Spend or save daily",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CheckboxListTile(
                  value: check5,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check5 = value;
                    });
                  },
                  title: Text(
                    "Spend while traveling",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                CheckboxListTile(
                  value: check6,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check6 = value;
                    });
                  },
                  title: Text(
                    "Other reason",
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 120.h),
                Center(child: MyButton(onPressed: () {}, text: 'Next'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
