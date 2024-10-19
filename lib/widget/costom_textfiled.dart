
import 'package:e_commerce/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CostomTextfiled extends StatefulWidget {
  const CostomTextfiled({super.key,this.hintTex,this.controller,this.validator,this.keyboardType,this.preffixIcon,this.isPassword = false});
  final String? hintTex;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final TextInputType? keyboardType;
  final IconData? preffixIcon;
  final bool isPassword;
  @override
  State<CostomTextfiled> createState() => _CostomTextfiledState();
}
class _CostomTextfiledState extends State<CostomTextfiled> {
  var obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      obscureText: widget.isPassword?obscureText:false,
      decoration: InputDecoration(
        hintText: widget.hintTex,
        fillColor: AppColor.brownwitOpacity,
        filled: true,
        prefixIcon: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          height: 40.h,
          width: 30.w,
          decoration: BoxDecoration(
            color: AppColor.bluewithOpacity,
            borderRadius: BorderRadius.circular(15.r),),
          child: Center(
            child: Icon(widget.preffixIcon,color: AppColor.btnColor,size: 25.sp,),
          ),
        ),
        suffixIcon: widget.isPassword==true?GestureDetector(
         onTap: togol,
          child: obscureText == true? Icon(Icons.visibility_off,color: AppColor.grayColor,)
              :Icon(Icons.visibility,color: AppColor.blackColor,),
        ):null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: AppColor.grayColor,
          )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColor.btnColor,
            ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              color: AppColor.grayColor,
            )
        )
      ),
    );
  }
  void togol (){
    setState(() {
      obscureText =! obscureText;
    });
  }
}
