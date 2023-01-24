import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/appColors/appColors.dart';
import 'package:netro_pay/screens/homeScreen/balance.dart';
import 'package:netro_pay/screens/homeScreen/bankService.dart';
import 'package:netro_pay/screens/homeScreen/invoice2.dart';
import 'package:netro_pay/screens/homeScreen/moneyReq.dart';
import 'package:netro_pay/screens/homeScreen/notification.dart';
import 'package:netro_pay/screens/homeScreen/payBill.dart';
import 'package:netro_pay/screens/homeScreen/reqMoney.dart';
import 'package:netro_pay/screens/profileScreen/faq.dart';
import 'package:netro_pay/screens/profileScreen/privacyPolicy.dart';
import 'package:netro_pay/screens/profileScreen/settings.dart';
import 'package:netro_pay/screens/profileScreen/statement.dart';
import 'package:netro_pay/screens/profileScreen/support.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../screens/homeScreen/qrScreen.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      SafeArea(
        child: Container(
          color: Color.fromARGB(255, 243, 243, 243),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 40.h,
                              width: 40.w,
                              child: Image.asset('assets/images/man1.png')),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Alexar,',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Welcome Back!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationScreen()));
                        },
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1, color: AppColors.lightBlue),
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            color: AppColors.themeColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 177.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.themeColor,
                          Color.fromARGB(255, 165, 168, 248),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      //border: Border.all(width: 1, color: AppColors.lightBlue),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15.h),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QrScreen()));
                          },
                          child: Container(
                              height: 68.h,
                              width: 296.w,
                              child: Image.asset('assets/images/wallet.png')),
                        ),
                        SizedBox(height: 15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Balance()));
                                  },
                                  child: Container(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset('assets/images/1.png'),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Balance',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Balance()));
                                  },
                                  child: Container(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset('assets/images/2.png'),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Send',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ReqMoney()));
                                  },
                                  child: Container(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset('assets/images/3.png'),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Request',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Balance()));
                                  },
                                  child: Container(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset('assets/images/4.png'),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Transfer',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Statement()));
                                  },
                                  child: Container(
                                    height: 48.h,
                                    width: 48.w,
                                    child: Image.asset('assets/images/5.png'),
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'History',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 220.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                      // boxShadow: [
                      //   BoxShadow(
                      //       blurRadius: 10,
                      //       color: Color.fromARGB(255, 222, 221, 221))
                      // ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Other Services',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  InVoice2()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/create.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Create Invoice',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PayBill()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/bill.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Pay Bills',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BankService()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/bank.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Bank Transfer',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  Container(
                                      height: 45.h,
                                      width: 45.w,
                                      child: Image.asset(
                                          'assets/images/saving.png')),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Savings',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PayBill()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/bulb.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Electricity',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PayBill()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/movie.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Movie',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MoneyReq()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/money.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Add Money',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  QrScreen()));
                                    },
                                    child: Container(
                                        height: 45.h,
                                        width: 45.w,
                                        child: Image.asset(
                                            'assets/images/share.png')),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Activity',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: AppColors.themeColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 70.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset('assets/images/man2.png')),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Alex Macculam',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Send Money',
                                    style: TextStyle(
                                        color: AppColors.themeColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "-" + "\u0024" + "66.02",
                                style: TextStyle(
                                    color: AppColors.themeColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '25-12-2022  6.00pm',
                                style: TextStyle(
                                    color: AppColors.grey2,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 70.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset('assets/images/man1.png')),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mac Dinner',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Cashout',
                                    style: TextStyle(
                                        color: AppColors.red,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "-" + "\u0024" + "120.02",
                                style: TextStyle(
                                    color: AppColors.red,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '25-12-2022  6.00pm',
                                style: TextStyle(
                                    color: AppColors.grey2,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    height: 70.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 40.h,
                                  width: 40.w,
                                  child: Image.asset('assets/images/man3.png')),
                              SizedBox(width: 10.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Brandon King',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    'Recived Money',
                                    style: TextStyle(
                                        color: AppColors.green,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "-" + "\u0024" + "250.02",
                                style: TextStyle(
                                    color: AppColors.green,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                '25-12-2022  6.00pm',
                                style: TextStyle(
                                    color: AppColors.grey2,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      Text(''),
      SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: AppColors.black)),
                    SizedBox(width: 10.w),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 110.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 70.h,
                                width: 70.w,
                                child: Image.asset('assets/images/man1.png')),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Alexar Usuf',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10.w),
                                    Icon(
                                      Icons.drive_file_rename_outline_rounded,
                                      color: AppColors.themeColor,
                                    )
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.call,
                                      color: AppColors.grey2,
                                      size: 15,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      '(581)-307-6902',
                                      style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      color: AppColors.grey2,
                                      size: 16,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'alexar_usuf@yourmail.com',
                                      style: TextStyle(
                                          color: AppColors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.translate,
                                    color: AppColors.themeColor,
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Language',
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Text(
                                'English',
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Statement()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.text_snippet,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Statement',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.policy_outlined,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Support()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.support_agent,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Support',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Faq()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.help_center_outlined,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'FAQ',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PrivacyPolicy()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'About',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Divider(
                          height: 1,
                          color: AppColors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: AppColors.themeColor,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.grey2,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 56.h,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.settings_power,
                          color: AppColors.red,
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          'Logout',
                          style: TextStyle(
                              color: AppColors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home,
          ),
          activeColorPrimary: AppColors.themeColor,
          inactiveColorPrimary: AppColors.grey),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.qr_code,
            color: AppColors.white,
          ),
          activeColorPrimary: AppColors.themeColor,
          inactiveColorPrimary: AppColors.grey),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.account_circle,
          ),
          activeColorPrimary: AppColors.themeColor,
          inactiveColorPrimary: AppColors.grey)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreen(),
      controller: controller,
      items: _navBarItem(),
      decoration: NavBarDecoration(borderRadius: BorderRadius.circular(12)),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
