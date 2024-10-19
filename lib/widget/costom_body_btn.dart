import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color.dart';
import '../utils/string_style.dart';

class CostomBodybtn extends StatelessWidget {
  CostomBodybtn({super.key,required this.title,required this.ontab,this.One,this.Tow,this.Three,  });
  String title;
  VoidCallback ontab;
  IconData? One;
  IconData? Tow;
  IconData? Three;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
        height: 50.r,
        width: 200.w,
        decoration: BoxDecoration(
          color: AppColor.btnColor1,
          borderRadius: BorderRadius.circular(40.r),),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: StringStyle.h1(color: AppColor.whiteColor,
                  fontWeight: FontWeight.normal),
              ),
               if(One != null || Tow != null || Three != null)
               Row(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Icon(One,color: AppColor.blackColor,size: 12.sp,),
                   Icon(Tow,color: AppColor.grayColor,size: 12.sp,),
                   Icon(Three,color: AppColor.blackColor,size: 12.sp,),
                 ],
               )
            ],
          ),),
      ),
    );
  }
}