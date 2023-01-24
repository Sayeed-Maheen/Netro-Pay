import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/appColors/appColors.dart';

class MyButton2 extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  MyButton2({
    required this.onPressed,
    required this.text,
  });

  @override
  State<MyButton2> createState() => _MyButton2State();
}

class _MyButton2State extends State<MyButton2> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      height: 52.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(0),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.themeColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 52.h,
          width: double.infinity,
          child: Center(
              child: Text(
            widget.text,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          )),
        ),
      ),
    );
  }
}
