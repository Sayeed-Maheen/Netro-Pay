import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../appColors/appColors.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: AppColors.grey,
            ),
            child: Checkbox(
                value: check1,
                onChanged: (bool? value) {
                  setState(() {
                    check1 = value;
                  });
                }),
          ),
          Text(
            "Remember me",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
