import 'package:adidas_app/screens/SignInScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
class OnBoardingScreen extends StatefulWidget {
  static String id = 'OnBoardingScreeen';
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  forFirstTime()async{
SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
sharedPreferences.setString('firstTime', 'yes');
  }
  @override
  void initState(){
    super.initState();
    forFirstTime();
  }
  Widget build(BuildContext context) {
    return IntroductionScreen(
      skip: Text('Skip'),
      done: Text('Done'),
      next: Icon(Icons.arrow_forward,),
      onDone: (){
        Navigator.pushNamed(context, SignInScreen.id);
      },
      showNextButton: true,
      showSkipButton: true,
      pages: [
        PageViewModel(
          image: Image.asset('assets/images/ad1.jpg'),
          title:'Shop Now!' ,
          body: 'All you need in one place',
        ),
        PageViewModel(
          image: Image.asset('assets/images/ad2.jpg'),
          title:'Best Experience' ,
          body: 'Best Experience in shopping',
        ),PageViewModel(
          image: Image.asset('assets/images/ad3.jpg'),
          title:'Save Money' ,
          body: 'The best prices',
        ),
        PageViewModel(
          image: Image.asset('assets/images/ad4.jpg'),
          title:'Free Shipping' ,
          body: 'Free Shipping',
        ),
      ],
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
