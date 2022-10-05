import 'package:ecommerce_app/ui/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:ecommerce_app/const/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), ()=> Navigator.push(context, CupertinoPageRoute(builder: (_)=> login())));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('eCommerce',style: TextStyle(color: Colors.white,fontSize: 44.sp,fontWeight: FontWeight.bold),),
              CircularProgressIndicator()
            ],
          ),
        ),

      ),
    );
  }
}
