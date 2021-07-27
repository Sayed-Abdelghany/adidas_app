import 'package:adidas_app/helper/constants.dart';
import 'package:adidas_app/screens/SignInScreen.dart';
import 'package:adidas_app/widget/CustomButton.dart';
import 'package:adidas_app/widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignUpScreen extends StatefulWidget {
  static String id = 'SignUpScreen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.sp,),
          Container(
            height: .3.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SizedBox(height: 10.sp,),
          CustomTextField(hint: 'Choose your name',iconData: Icons.person,secure: false,),
          CustomTextField(hint: 'Enter your email',iconData: Icons.mail,secure: false,),
          CustomTextField(hint: 'Enter Password',iconData: Icons.lock,secure: true,),
          CustomTextField(hint: 'Confirm Password',iconData: Icons.lock,secure: true,),
          SizedBox(height: 15.sp,),
          CustomButton(name: 'SIGN UP',hight: .06.sh,color: KprimaryColor,),
          SizedBox(height: 15.sp,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have account ?',style: TextStyle(fontSize:20.sp,color: Colors.black)),
                TextButton(
                    child: Text('SIGN IN',style: TextStyle(
                        color: Colors.blue,fontSize: 20.sp),),
                    onPressed: (){
                      Navigator.pushNamed(context, SignInScreen.id);
                    }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
