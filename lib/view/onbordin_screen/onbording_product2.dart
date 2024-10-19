import 'package:e_commerce/core/routs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/color.dart';
import '../../utils/image.dart';
import '../../utils/string.dart';
import '../../utils/string_style.dart';
import '../../widget/costom_body_btn.dart';
import '../../widget/heading_Text.dart';

class OnbordingProduct2 extends StatefulWidget {
  const OnbordingProduct2({super.key});

  @override
  State<OnbordingProduct2> createState() => _OnbordingProduct2State();
}

class _OnbordingProduct2State extends State<OnbordingProduct2> {
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
                        text: "3",
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
                child: Image.asset(AppImage.onbording,height: Get.height /1.1,
                  width: Get.width /2,fit: BoxFit.cover,)),
            SizedBox(height: Get.height * .07,),
            HeadingText(title: AppString.choseProduct2),
            SizedBox(height: Get.height * .02,),
            Text(AppString.onbordingProudctDoc),
            SizedBox(height: Get.height * .05,),
            CostomBodybtn (title: "Next",
              One: Icons.arrow_forward_ios,
              Tow: Icons.arrow_forward_ios,
              Three: Icons.arrow_forward_ios,
              ontab: (){
              Get.toNamed(Approute.loginScreen);
              },),
          ],
        ),
      ),
    );
  }
}