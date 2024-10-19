import 'package:e_commerce/utils/color.dart';
import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/utils/string_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key,required this.title,required this.imagePath,required this.productPrice,required this.onTap});
final String title;
final String imagePath;
final num productPrice;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      height: 250,
      width: Get.width/2.4,
      color: Colors.black26,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
              width: 150,
              // height: 15,
              // color: Colors.white70,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Image.asset(imagePath,height: 150,width: 150,),),
            ),
              Positioned(
                right: 0,
                  top: 0,
                  child: IconButton(onPressed: (){},icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white70,), child: Icon(Icons.favorite,
                  color: AppColor.redColor,
                size: 16,),
              ),)),
          ],
          ),
          Text("T-shart",style: TextStyle(fontSize: 30,
              color: AppColor.blackColor,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4,),
          Text("\$${productPrice.toString() }",style: StringStyle.h1(color: Colors.black),)
        ],
      ),
    );
  }
}

