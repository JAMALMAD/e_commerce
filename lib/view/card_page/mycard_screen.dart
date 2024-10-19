import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/widget/costom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/string_style.dart';
import '../../widget/costom_body_btn1.dart';

class MycardScreen extends StatelessWidget {
  const MycardScreen({super.key,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("My Card",style: StringStyle.h1(),),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return Costomcard(
                title: "Henley Shirts",
                price: "\$75",
                imagePath: AppImage.productImage,
                value: "2",
              );
            },
          ),
          Positioned(
            left: 30,
            bottom: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Subtotal:",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 180),
                    Text(
                      "\$740",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Column(
                  children: [
                    CostomBodyBtn1(title: "Checkout",
                        ontab: (){}
                    ),
                  ],
                )
                ]
                ),
             ),
            ],
           ),
          );
       }
}