import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/reasonScreen.dart';

import '../appColors/appColors.dart';
import '../screens/homeScreen/homeScreen.dart';
import 'myButton.dart';

class PopUp2 extends StatefulWidget {
  const PopUp2({super.key});

  @override
  State<PopUp2> createState() => _PopUp2State();
}

class _PopUp2State extends State<PopUp2> {
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
                    'Successful!',
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColors.green,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: const Text(
                  'Your password change successfully. Account Ready to use now!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w600,
                      height: 1.2),
                ),
              ),
              SimpleDialogOption(
                  child: MyButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                text: 'Go to Home',
              )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyButton(onPressed: _showSimpleDialog, text: 'Update'),
    );
  }
}
