import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextField extends StatefulWidget {
  final String ?hint;
  final IconData ?iconData;
  final bool ?secure;
  CustomTextField({this.hint,this.iconData,this.secure});
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        obscureText: widget.secure!,
        decoration: InputDecoration(
            labelText: widget.hint!,hintStyle: TextStyle(fontSize: 20.sp),
            prefixIcon: Icon(widget.iconData!,color: Colors.black,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.sp)),
        ),
      ),
      ),
    );
  }
}
