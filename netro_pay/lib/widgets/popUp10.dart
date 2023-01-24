import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:netro_pay/widgets/bottomNav.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp10 extends StatefulWidget {
  const PopUp10({super.key});

  @override
  State<PopUp10> createState() => _PopUp10State();
}

class _PopUp10State extends State<PopUp10> {
  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: AppColors.white,
            children: <Widget>[
              SimpleDialogOption(
                child: Container(
                    height: 108.h,
                    width: 108.w,
                    child: Image.asset('assets/images/confirm.png')),
              ),
              SimpleDialogOption(
                child: Center(
                  child: Text(
                    "Successful!",
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Center(
                  child: const Text(
                    'We have successfully received your Payment. Thanks for using Link 3 internet.  ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SimpleDialogOption(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyBottomNav()));
                },
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Go to Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyButton(
        onPressed: _showSimpleDialog,
        text: "Pay Now",
      ),
    );
  }
}
