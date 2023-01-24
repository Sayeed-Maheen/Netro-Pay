import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/share.dart';
import 'package:netro_pay/widgets/bottomNav.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp9 extends StatefulWidget {
  const PopUp9({super.key});

  @override
  State<PopUp9> createState() => _PopUp9State();
}

class _PopUp9State extends State<PopUp9> {
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
                    'Your ' + "\u0024" + "300 is on its Way!",
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
                    'We are transfer money to: Bank Asia',
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
        text: "Transfer Now",
      ),
    );
  }
}
