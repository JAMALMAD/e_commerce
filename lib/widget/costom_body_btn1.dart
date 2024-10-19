
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color.dart';
import '../utils/string_style.dart';

class CostomBodyBtn1 extends StatelessWidget {
  CostomBodyBtn1({super.key,required this.title,required this.ontab});
  String title;
  VoidCallback ontab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        height: 50.r,
        width: 200.w,
        decoration: BoxDecoration(
          color: Color(0xFFC39C17),
          borderRadius: BorderRadius.circular(40.r),),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: StringStyle.h1(color: AppColor.whiteColor,
                  fontWeight: FontWeight.normal),
              ),
            ],
          ),),
      ),
    );
  }
}