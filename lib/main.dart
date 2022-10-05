import 'package:ecommerce_app/ui/splah_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            ScreenUtil.setContext(context);
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,

            );
          },
          home: SplashScreen(),

        );
      },
    );
  }
}


