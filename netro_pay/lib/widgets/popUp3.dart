import 'package:flutter/material.dart';
import 'package:netro_pay/screens/takepicture.dart';
import '../appColors/appColors.dart';
import 'myButton.dart';

class PopUp3 extends StatefulWidget {
  const PopUp3({super.key});

  @override
  State<PopUp3> createState() => _PopUp3State();
}

class _PopUp3State extends State<PopUp3> {
  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            backgroundColor: AppColors.white,
            children: <Widget>[
              SimpleDialogOption(
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TakePicture()));
                    },
                    child: Text(
                      'Take Picture',
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColors.themeColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Center(
                    child: Divider(
                  height: 1,
                  color: AppColors.grey,
                )),
              ),
              SimpleDialogOption(
                child: const Text(
                  'Choose from Gallery',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SimpleDialogOption(
                child: Center(
                    child: Divider(
                  height: 1,
                  color: AppColors.grey,
                )),
              ),
              SimpleDialogOption(
                child: const Text(
                  'Cancel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
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
