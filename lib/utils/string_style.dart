import 'package:e_commerce/utils/color.dart';
import 'package:flutter/cupertino.dart';

class StringStyle{
  static TextStyle h1({
    double?fontSize,Color?color,FontWeight?fontWeight}){
    return TextStyle(
      fontSize: fontSize??20,
      fontWeight: fontWeight??FontWeight.bold,
      color: color??AppColor.blackColor,
    );
  }
}