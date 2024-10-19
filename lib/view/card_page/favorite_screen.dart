import 'package:e_commerce/utils/string_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/image.dart';
import '../../widget/home_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.keyboard_arrow_left),
               SizedBox(width: 125,),
               Text("Favorite",style: StringStyle.h1(),),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.62,
              ),
              itemBuilder: (context,index){
                return HomeCard(title: "To be successful, be hardworking.",
                    imagePath: AppImage.productImage, productPrice: 150, onTap: (){});
              }),
        ),
      ),
    );
  }
}
