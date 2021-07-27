import 'package:adidas_app/helper/constants.dart';
import 'package:adidas_app/screens/ForgetPassScreen.dart';
import 'package:adidas_app/screens/HomeScreen.dart';
import 'package:adidas_app/screens/SignUpScreen.dart';
import 'package:adidas_app/widget/CustomButton.dart';
import 'package:adidas_app/widget/CustomTextField.dart';
import 'package:adidas_app/widget/SocialButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignInScreen extends StatefulWidget {
  static String id = 'SignInScreen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var signInKey= GlobalKey<FormState>();
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
          Form(
            key: signInKey,
            child: Column(
              children: [
                CustomTextField(hint: 'Enter Email',iconData: Icons.email,secure: false,),
                CustomTextField( hint: 'Enter Password',iconData: Icons.lock,secure: true,),
              ],
            ),
          ),
          SizedBox(height: 10.sp,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, ForgetPassScreen.id);
                  },
                  child: Text('Forget Password ?',style: TextStyle(
                      color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20.sp),),
                )),
          ),

          SizedBox(height: 15.sp,),
          InkWell(
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: CustomButton(name: 'SIGN IN',hight: .08.sh,color: KprimaryColor,)),
          SizedBox(height: 15.sp,),

          // Center(child: Text('-OR-',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),)),
          SocialButton(icon: FontAwesomeIcons.facebook,colorIcon: Colors.white,name:'SIGN IN WITH Facebook' ,colorName: Colors.white,color: Colors.blue[600],),
          SizedBox(height: 15.sp,),
          SocialButton(icon: FontAwesomeIcons.google,colorIcon: Colors.red,name:'SIGN IN WITH Google' ,colorName: Colors.red,color: Colors.white,),
          SizedBox(height: 15.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have account ?',style: TextStyle(fontSize:25.sp,color: Colors.black)),
              TextButton(
                  child: Text('SIGN UP',style: TextStyle(
                      color: Colors.blue,fontSize: 20.sp),),
                  onPressed: (){
                    Navigator.pushNamed(context, SignUpScreen.id);
                  }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
