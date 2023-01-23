import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/inVoice.dart';
import 'package:netro_pay/screens/reasonScreen.dart';

import '../appColors/appColors.dart';
import '../screens/homeScreen/homeScreen.dart';
import 'myButton.dart';

class PopUp6 extends StatefulWidget {
  const PopUp6({super.key});

  @override
  State<PopUp6> createState() => _PopUp6State();
}

class _PopUp6State extends State<PopUp6> {
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
                    'Done!',
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColors.green,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: const Text(
                  'We have successfully create the new Invoice. You can share now & Received your money.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SimpleDialogOption(
                  child: MyButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InVoice()));
                },
                text: 'Check Invoice',
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
        text: "\u0024" + " Send Money",
      ),
    );
  }
}
