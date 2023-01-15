import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../appColors/appColors.dart';
import '../../models/onBoardingModel.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView.builder(
          controller: _controller,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: contents.length,
          itemBuilder: (_, i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.h),
                    Container(
                        height: 265.h,
                        width: 260.w,
                        child: Image.asset(contents[i].image)),
                    SizedBox(height: 80.h),
                    Text(
                      contents[i].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.2,
                          color: AppColors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      contents[i].discription,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.2,
                        color: AppColors.grey,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                        child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          contents.length,
                          (index) => buildDot(index, context),
                        ),
                      ),
                    )),
                    SizedBox(height: 30.h),
                    Container(
                      height: 52.h,
                      width: 296.w,
                      //margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.themeColor,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if (currentIndex == contents.length - 1) {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => MultipleLoginScreen()));
                          }
                          _controller.nextPage(
                            duration: Duration(milliseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },
                        child: Center(
                          child: Text(
                            currentIndex == contents.length - 1
                                ? "GET STARTED"
                                : "CONTINUE",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 8.h,
      margin: EdgeInsets.all(2),
      width: currentIndex == index ? 15.w : 8.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: AppColors.themeColor),
    );
  }
}
