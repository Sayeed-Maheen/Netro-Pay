import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/inVoice.dart';
import 'package:netro_pay/screens/homeScreen/share.dart';
import 'package:netro_pay/widgets/bottomNav.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp7 extends StatefulWidget {
  const PopUp7({super.key});

  @override
  State<PopUp7> createState() => _PopUp7State();
}

class _PopUp7State extends State<PopUp7> {
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
                  child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Share()));
                },
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Share',
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
        text: "Create Invoice",
      ),
    );
  }
}
