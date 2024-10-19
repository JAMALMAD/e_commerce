import 'package:e_commerce/utils/color.dart';
import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/utils/string.dart';
import 'package:e_commerce/utils/string_style.dart';
import 'package:e_commerce/widget/costom_body_btn1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/routs.dart';
import '../../widget/costom_body_btn.dart';

class CongoScreen extends StatelessWidget {
  const CongoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 60),
        width: 400,
        // height: 300,
        child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Container(
               height: 350,
                 width: 350,
                 child: Image.asset(AppImage.cogratImage,fit: BoxFit.cover,)),
           ),
           SizedBox(height: 50,),
           Text("Congratulatoin!!",style: StringStyle.h1(),),
           SizedBox(height: 10,),
           Text(AppString.congo),
           SizedBox(height: Get.height * .05,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CostomBodybtn (title: "Get your receipt",
                 ontab: (){
                   Get.toNamed(Approute.homePage);
                 },),
             ],
           ),
           SizedBox(height: Get.height * .02,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CostomBodyBtn1 (title: "Back to Home",
                 ontab: (){
                   Get.toNamed(Approute.homePage);
                 },),
             ],
           ),
         ],
        ),
      ),
    );
  }
}
