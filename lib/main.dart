import 'package:adidas_app/screens/ForgetPassScreen.dart';
import 'package:adidas_app/screens/HomeScreen.dart';
import 'package:adidas_app/screens/OnBoardingScreen.dart';
import 'package:adidas_app/screens/SignInScreen.dart';
import 'package:adidas_app/screens/SignUpScreen.dart';
import 'package:adidas_app/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
void main(){
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:()=> MaterialApp(
        initialRoute: SplashScreen.id,
        debugShowCheckedModeBanner: false,
        routes: {
          SignInScreen.id:(context)=>SignInScreen(),
          ForgetPassScreen.id:(context)=>ForgetPassScreen(),
          SignUpScreen.id:(context)=>SignUpScreen(),
          SplashScreen.id:(context)=>SplashScreen(),
          OnBoardingScreen.id:(context)=>OnBoardingScreen(),
          HomeScreen.id:(context)=>HomeScreen(),
        },
      ),
    );
  }
}

