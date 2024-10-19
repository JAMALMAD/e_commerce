import 'package:e_commerce/core/routs.dart';
import 'package:e_commerce/utils/color.dart';
import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/utils/string.dart';
import 'package:e_commerce/utils/string_style.dart';
import 'package:e_commerce/view/onbordin_screen/onbording_product1.dart';
import 'package:e_commerce/widget/costom_body_btn.dart';
import 'package:e_commerce/widget/heading_Text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnbordingProduct extends StatefulWidget {
  const OnbordingProduct({super.key});

  @override
  State<OnbordingProduct> createState() => _OnbordingProductState();
}

class _OnbordingProductState extends State<OnbordingProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          children: [
            SizedBox(height: Get.height * .05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "1",
                        style: StringStyle.h1(
                          color:AppColor.blackColor,
                          fontWeight:FontWeight.normal,)),
                    TextSpan(
                        text: "/3",
                        style: StringStyle.h1(color:AppColor.grayColor)
                    )
                  ],)),
                Text(AppString.skip,
                  style: StringStyle.h1(),),
              ],
            ),
            SizedBox(height: Get.height * .02,),
            SizedBox(height: Get.height / 4.5,width: Get.width/2.5,
                child: Image.asset(AppImage.onbording,height: Get.height /2.1,
                  width: Get.width /2,fit: BoxFit.cover,)),
            SizedBox(height: Get.height * .02,),
            HeadingText(title: AppString.choseProduct),
            SizedBox(height: Get.height * .02,),
            Text(AppString.onbordingProudctDoc),
            SizedBox(height: Get.height * .05,),
            CostomBodybtn (title: "Next",
              One: Icons.arrow_forward_ios,
              ontab: (){
                Get.toNamed(Approute.onbordingProduct1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
