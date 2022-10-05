// import 'package:ecommerce_app/const/AppColors.dart';
// import 'package:ecommerce_app/widgets/customButton.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter_ecommerce/ui/bottom_nav_controller.dart';
import 'dart:ui';

import 'package:ecommerce_app/ui/bottom_nav_controller.dart';
import 'package:ecommerce_app/ui/registration_screen.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();
//   bool _obscureText = true;
//
//   signIn()async{
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: _emailController.text,
//           password: _passwordController.text
//       );
//       var authCredential = userCredential.user;
//       print(authCredential!.uid);
//       if(authCredential.uid.isNotEmpty){
//        // Navigator.push(context, CupertinoPageRoute(builder: (_)=>BottomNavController()));
//       }
//       else{
//         Fluttertoast.showToast(msg: "Something is wrong");
//       }
//
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found') {
//         Fluttertoast.showToast(msg: "No user found for that email.");
//
//       } else if (e.code == 'wrong-password') {
//         Fluttertoast.showToast(msg: "Wrong password provided for that user.");
//
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.deep_orange,
//       body: SafeArea(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 150.h,
//               width: ScreenUtil().screenWidth,
//               child: Padding(
//                 padding: EdgeInsets.only(left: 20.w),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     IconButton(
//                       onPressed: null,
//                       icon: Icon(
//                         Icons.light,
//                         color: Colors.green,
//                       ),
//                     ),
//                     Text(
//                       "Sign In",
//                       style: TextStyle(fontSize: 22.sp, color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 width: ScreenUtil().screenWidth,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(28.r),
//                     topRight: Radius.circular(28.r),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(20.w),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 20.h,
//                         ),
//                         Text(
//                           "Welcome Back",
//                           style: TextStyle(
//                               fontSize: 22.sp, color: AppColors.deep_orange),
//                         ),
//                         Text(
//                           "Glad to see you back my buddy.",
//                           style: TextStyle(
//                             fontSize: 14.sp,
//                             color: Color(0xFFBBBBBB),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15.h,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               height: 48.h,
//                               width: 41.w,
//                               decoration: BoxDecoration(
//                                   color: AppColors.deep_orange,
//                                   borderRadius: BorderRadius.circular(12.r)),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.email_outlined,
//                                   color: Colors.white,
//                                   size: 20.w,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Expanded(
//                               child: TextField(
//                                 controller: _emailController,
//                                 decoration: InputDecoration(
//                                   hintText: "thed9954@gmail.com",
//                                   hintStyle: TextStyle(
//                                     fontSize: 14.sp,
//                                     color: Color(0xFF414041),
//                                   ),
//                                   labelText: 'EMAIL',
//                                   labelStyle: TextStyle(
//                                     fontSize: 15.sp,
//                                     color: AppColors.deep_orange,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10.h,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               height: 48.h,
//                               width: 41.w,
//                               decoration: BoxDecoration(
//                                   color: AppColors.deep_orange,
//                                   borderRadius: BorderRadius.circular(12.r)),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.lock_outline,
//                                   color: Colors.white,
//                                   size: 20.w,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10.w,
//                             ),
//                             Expanded(
//                               child: TextField(
//                                 controller: _passwordController,
//                                 obscureText: _obscureText,
//                                 decoration: InputDecoration(
//                                   hintText: "password must be 6 character",
//                                   hintStyle: TextStyle(
//                                     fontSize: 14.sp,
//                                     color: Color(0xFF414041),
//                                   ),
//                                   labelText: 'PASSWORD',
//                                   labelStyle: TextStyle(
//                                     fontSize: 15.sp,
//                                     color: AppColors.deep_orange,
//                                   ),
//                                   suffixIcon: _obscureText == true
//                                       ? IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _obscureText = false;
//                                         });
//                                       },
//                                       icon: Icon(
//                                         Icons.remove_red_eye,
//                                         size: 20.w,
//                                       ))
//                                       : IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           _obscureText = true;
//                                         });
//                                       },
//                                       icon: Icon(
//                                         Icons.visibility_off,
//                                         size: 20.w,
//                                       )),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//
//                         SizedBox(
//                           height: 50.h,
//                         ),
//                         // elevated button
//                         customButton("Sign In", (){
//                           signIn();
//                         },),
//                         SizedBox(
//                           height: 20.h,
//                         ),
//                         Wrap(
//                           children: [
//                             Text(
//                               "Don't have an account?",
//                               style: TextStyle(
//                                 fontSize: 13.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: Color(0xFFBBBBBB),
//                               ),
//                             ),
//                             GestureDetector(
//                               child: Text(
//                                 " Sign Up",
//                                 style: TextStyle(
//                                   fontSize: 13.sp,
//                                   fontWeight: FontWeight.w600,
//                                   color: AppColors.deep_orange,
//                                 ),
//                               ),
//                               onTap: () {
//                                 // Navigator.push(
//                                 //     context,
//                                 //     CupertinoPageRoute(
//                                 //         builder: (context) =>
//                                 //             RegistrationScreen()));
//                               },
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;


  signIn()async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text
      );

      var authCredential = userCredential.user;
      print(authCredential!.uid);

      if(authCredential.uid.isNotEmpty){

        Navigator.push(context, CupertinoPageRoute(builder: (_)=>BottomNavController()));

      }

      else{

        Fluttertoast.showToast(msg: "Something is wrong");


      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {

        Fluttertoast.showToast(msg: 'No user found for that email.');

        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {

        Fluttertoast.showToast(msg: 'Wrong password provided for that user.');

        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  // signIn()async{
  //   try {
  //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: _emailController.text,
  //         password: _passwordController.text
  //     );
  //     var authCredential = userCredential.user;
  //     print(authCredential!.uid);
  //     if(authCredential.uid.isNotEmpty){
  //      Navigator.push(context, CupertinoPageRoute(builder: (_)=>BottomNavController()));
  //     }
  //     else{
  //       Fluttertoast.showToast(msg: "Something is wrong");
  //     }
  //
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       Fluttertoast.showToast(msg: "No user found for that email.");
  //
  //     } else if (e.code == 'wrong-password') {
  //       Fluttertoast.showToast(msg: "Wrong password provided for that user.");
  //
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 39.w),
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 28.sp, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r))),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40.h),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 30.sp),
                        ),
                        Text(
                          'Hello, Pleased to see you back',
                          style: TextStyle(color: Colors.grey, fontSize: 15.sp),
                        ),
                        SizedBox(height: 35.h),

                        Row(
                          children: [
                            Container(
                              height: 49.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child:
                                  Icon(Icons.mail_outline, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle:
                                        TextStyle(color: Colors.blueAccent),
                                    hintText: "Example@example.com",
                                    hintStyle: TextStyle(
                                        fontSize: 15.sp,
                                        color: Color(0x54414041))),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 28.h,
                        ),

                        Row(
                          children: [
                            Container(
                              height: 49.h,
                              width: 45.w,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child:
                                  Icon(Icons.lock_outline, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: TextField(
                                controller: _passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle:
                                      TextStyle(color: Colors.blueAccent),
                                  hintText: "Enter 6 Characters",
                                  hintStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: Color(0x54414041)),
                                  suffixIcon: _obscureText == true
                                      ? IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = false;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.remove_red_eye,
                                            size: 20.w,
                                          ))
                                      : IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = true;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.visibility_off,
                                            size: 20.w,
                                          )),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 50.h,
                        ),
                        // elevated button
                          customButton("Sign In", (){
                          signIn();
                        },),
                        SizedBox(
                          height: 20.h,
                        ),
                        Wrap(
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFBBBBBB),
                              ),
                            ),
                            GestureDetector(
                              child: Text(
                                " Sign Up",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            RegistrationScreen()));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
