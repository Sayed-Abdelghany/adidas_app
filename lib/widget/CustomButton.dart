import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomButton extends StatefulWidget {
  String ?name;
  double ? hight;
  Color ?color;
  CustomButton({this.name,this.hight,this.color});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child:Container(
        child: Center(
          child: Text(widget.name!,style: TextStyle(
              color: Colors.white,fontSize: 25.sp),),
        ),
        height: widget.hight!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          color: widget.color,
        ),
      ),

    );
  }
}
