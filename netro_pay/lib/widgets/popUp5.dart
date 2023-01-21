import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/screens/homeScreen/homeScreen.dart';
import 'package:netro_pay/widgets/bottomNav.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp5 extends StatefulWidget {
  const PopUp5({super.key});

  @override
  State<PopUp5> createState() => _PopUp5State();
}

class _PopUp5State extends State<PopUp5> {
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
                    'Successful!!',
                    style: TextStyle(
                        fontSize: 24,
                        color: AppColors.green,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: const Text(
                  'Please wait a moment, we are preparing for you',
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
                      MaterialPageRoute(builder: (context) => MyBottomNav()));
                },
                text: 'Explore Now',
              )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: _showSimpleDialog,
        child: Container(
          height: 52.h,
          width: 158.w,
          decoration: BoxDecoration(
              color: AppColors.themeColor,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              "Next",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
