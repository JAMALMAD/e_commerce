import 'package:e_commerce/core/routs.dart';
import 'package:e_commerce/utils/color.dart';
import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/utils/string_style.dart';
import 'package:e_commerce/widget/home_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  var searchResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///===================================== draser =============================>
      drawer: Drawer(
        width: Get.width/1.2,
        child: Column(
          children: [
            ///========================= Search bar ==============>
            SizedBox(height: 20,),
            ListTile(
              title: Text("Keep trying"),
              subtitle: Text("you will succeed"),
              trailing: Icon(Icons.keyboard_arrow_right,size: 50,),
              leading: ClipOval(
                child: Image.network("https://scontent.fdac11-1.fna.fbcdn.net/v/t39.30808-6/448879900_1024207979364751_8287612987528821491_n.jpg?"
                    "_nc_cat=104&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeEKnTUVPjDCyyxlMDN-XCW8kTTU_j7U3VCRNNT-PtTdUMppmIum_9UG7jfxVb_ED_MJjYHYeciZBGMJQv0THlMq&_nc_ohc=RXsDjmjcPPUQ7kNvgHSUwUC&_nc_ht=scontent.fdac11-1.fna&_nc_gid=A4Vgi5D4Pe6wJxqI0pcS7YD&oh=00_AYCrN74CZSWzxpk_VcCNGpO-vEyq0uh3s6ja9K37zc5b1w&oe=670D8DCB",
                  height: 80,width: 60,fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: (){
                Get.toNamed(Approute.favoritePage);
              },
              leading: Icon(Icons.heart_broken,color: AppColor.redColor,),
              title: Text("My Favorite",style: StringStyle.h1(),),),
            // SizedBox(height: 3,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.wallet,color: AppColor.redColor,),
              title: Text("Wallets"),),
            // SizedBox(height: 10,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.backpack,color: AppColor.redColor,),
              title: Text("My oder"),),
            // SizedBox(height: 10,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.info,color: AppColor.redColor,),
              title: Text("About us"),),
            // SizedBox(height: 10,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.lock,color: AppColor.redColor,),
              title: Text("Privacy policy"),),
            // SizedBox(height: 10,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings,color: AppColor.redColor,),
              title: Text("Settings"),),
            SizedBox(height: 30,),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.logout,color: AppColor.redColor,),
              title: Text("Log out"),),
          SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
               children: [
                 Container(
                   child: Image.asset(AppImage.logo,height: 50,width: 50,),
                 )
               ],
              ),
            )
          ],
        )
      ),
      appBar: AppBar(
        // leading: SvgPicture.asset(AppImage.svgLogo,),
        title: Row(
          children: [
            Icon(CupertinoIcons.location_solid),
            Text("15/2 Tow New Taxes"),
          ],
        ),
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.notifications),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: AppColor.redColor,
                  shape: BoxShape.circle,
                ),
              ),)
            ],
          ),

          SizedBox(width: 10,),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            SearchBar(
              backgroundColor: WidgetStatePropertyAll(AppColor.grayColor),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              controller: searchController,
              hintText: "Search Your Shirt",
              leading: Icon(Icons.search),
              trailing: [InkWell(
                onTap: (){
                  setState(() {
                    searchResult = searchController.text;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Icon(Icons.window_outlined,color: AppColor.whiteColor,),
                  ),
                ),
              ),
                SizedBox(width: 10,),
              ],
            ),
            ///==================== recent search list=============>
            SizedBox(height: 10,),
            ListTile(
              onTap: (){
                Get.toNamed(Approute.addCard);
              },
              title: Text("Recent Searches",style: StringStyle.h1(),),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            // SizedBox(height: 10,),
            Divider(
              color: AppColor.grayColor,
            ),
            SizedBox(height: 10,),
            Text("Search resutl Showing for \"${searchController.text}\""),
            SizedBox(height: 20,),
            ///==================== prduct ====================>
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
