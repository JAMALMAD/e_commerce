import 'package:e_commerce/utils/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/color.dart';

class FabGoogleBtn extends StatelessWidget {
  const FabGoogleBtn({super.key,this.iconData,required this.ontab});
  final IconData? iconData;
  final VoidCallback? ontab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontab,
      child: Container(
      height: 100.h,
      width: 100.w,
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColor.blackColor,
              blurRadius: 4.5,
              spreadRadius: 0.5,
            )
          ]
      ),
      child: Center(
        child: iconData == null?
      SizedBox(width: 50.h,height: 50.h,
        child: Image.asset(AppImage.googleImage,
          height: 100,width: 100,fit: BoxFit.cover,),
      )
          : Icon(iconData,
        color: AppColor.btnColor,size: 50,),
        
      ),
      ),
    );
  }
}
