import 'dart:async';
import 'package:adidas_app/screens/OnBoardingScreen.dart';
import 'package:adidas_app/screens/SignInScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String ?isFirst;
  checkIsFirstTime()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      isFirst = sharedPreferences.getString('firstTime');
    });
  }
  @override
  void initState(){
    super.initState();
    checkIsFirstTime();
    Timer(Duration(seconds: 3),(){
      Navigator.popAndPushNamed(context,isFirst == null? OnBoardingScreen.id:SignInScreen.id);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/sp.png'),
      ),
    );
  }
}
