import 'package:ecommerce_app/const/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton (String buttonText,onPressed){
  return SizedBox(
    width: ScreenUtil().screenWidth,
    height: 56.h,
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontSize: 18.sp),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blueAccent,
        elevation: 3,
      ),
    ),
  );
}