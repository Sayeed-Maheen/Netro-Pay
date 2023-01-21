import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';

import 'package:country_pickers/country_pickers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netro_pay/appColors/appColors.dart';

class CountryPicker extends StatefulWidget {
  @override
  _CountryPickerState createState() => _CountryPickerState();
}

class _CountryPickerState extends State<CountryPicker> {
  Country _selectedCountry = CountryPickerUtils.getCountryByIsoCode('US');

  @override
  Widget build(BuildContext context) {
    return CountryPickerDropdown(
      initialValue: 'US',
      itemBuilder: _buildDropdownItem,
      onValuePicked: (Country country) {
        setState(() {
          _selectedCountry = country;
        });
      },
    );
  }

  Widget _buildDropdownItem(Country country) {
    return Container(
      child: Row(
        children: [
          Container(
              height: 20.h,
              width: 25.w,
              child: CountryPickerUtils.getDefaultFlagImage(country)),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "${country.name}",
            style: TextStyle(
                fontSize: 13,
                color: AppColors.black,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
