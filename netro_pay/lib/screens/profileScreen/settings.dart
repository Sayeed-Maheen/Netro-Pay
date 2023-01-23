import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:netro_pay/screens/profileScreen/profileScreen2.dart';
import 'package:netro_pay/widgets/myButton.dart';
import '../../appColors/appColors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  late String _selectedGender;
  final _controller = TextEditingController();

  void _showGenderDropdown() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 125.h,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Male'),
                onTap: () {
                  setState(() {
                    _selectedGender = 'Male';
                    _controller.text = _selectedGender;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Female'),
                onTap: () {
                  setState(() {
                    _selectedGender = 'Female';
                    _controller.text = _selectedGender;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: SingleChildScrollView(
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
                          child:
                              Icon(Icons.arrow_back, color: AppColors.black)),
                      SizedBox(width: 10.w),
                      Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: Container(
                        height: 150.h,
                        width: 150.w,
                        child: Image.asset('assets/images/profile.png')),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        labelText: 'Full Name',
                        //hintText: 'Full Name',
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      decoration: new InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        labelText: "Email",
                        // hintText: "Father's name",
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: IntlPhoneField(
                      flagsButtonPadding: EdgeInsets.only(left: 10),
                      dropdownIconPosition: IconPosition.trailing,
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:
                              BorderSide(width: 1, color: AppColors.lightBlue),
                        ),
                      ),
                      initialCountryCode: 'US',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller:
                          dateinput, //editing controller of this TextField
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.lightBlue, width: 1.w),
                              borderRadius: BorderRadius.circular(12)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.lightBlue, width: 1.w),
                              borderRadius: BorderRadius.circular(12)),
                          suffixIcon: Icon(Icons.calendar_today),
                          labelText: "Date of Birth" //label text of field
                          ),

                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.lightBlue, width: 1.w),
                            borderRadius: BorderRadius.circular(12)),
                        labelText: 'Gender',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please select a gender';
                        }
                        return null;
                      },
                      readOnly: true,
                      controller: _controller,
                      onTap: () {
                        FocusScope.of(context).requestFocus(new FocusNode());
                        _showGenderDropdown();
                      },
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Center(
                    child: MyButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen2()));
                        },
                        text: "Continue"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
