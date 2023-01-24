import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/inVoice.dart';
import 'package:netro_pay/screens/homeScreen/moneyReq.dart';
import 'package:netro_pay/screens/homeScreen/share.dart';
import 'package:netro_pay/widgets/bottomNav.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp11 extends StatefulWidget {
  const PopUp11({super.key});

  @override
  State<PopUp11> createState() => _PopUp11State();
}

class _PopUp11State extends State<PopUp11> {
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
                    "You've requested " + "\u0024" + " from Daniel Dason!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColors.green,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: const Text(
                  'You will Daniel Dason know right away that you requested money. You can see the details in your activity in case you need them later.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.grey2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SimpleDialogOption(
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MoneyReq()));
                },
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'New Request',
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
                      'Done',
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
        text: "Create Invoice",
      ),
    );
  }
}
