import 'package:adidas_app/helper/constants.dart';
import 'package:adidas_app/widget/CustomButton.dart';
import 'package:adidas_app/widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ForgetPassScreen extends StatefulWidget {
  static String id = 'ForgetPassScreen';
  @override
  _ForgetPassScreenState createState() => _ForgetPassScreenState();
}

class _ForgetPassScreenState extends State<ForgetPassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 20.sp,),
          Container(
            height: .55.sh,
            width: 1.sw,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
          SizedBox(height: 60.sp,),
          CustomTextField(hint: 'Enter Your Mail',iconData: Icons.mail,secure: false,),
          SizedBox(height: 25.sp,),
          CustomButton(name: 'Reset Password',hight:.08.sh ,color:KprimaryColor ,),
        ],
      ),
    );
  }
}
