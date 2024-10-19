import 'package:e_commerce/core/routs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/color.dart';
import '../../../utils/image.dart';
import '../../../utils/string.dart';
import '../../../utils/string_style.dart';
import '../../../widget/costom_body_btn.dart';
import '../../../widget/costom_textfiled.dart';
import '../../../widget/fab_google_btn.dart';
import '../login_screen.dart';
import 'auth_controller.dart';

class SignScreen extends StatelessWidget {
   SignScreen({super.key});
  final AuthController authController = Get.find<AuthController>();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Get.height * .1),
                Image.asset(AppImage.logo,height: 70.h,width: 70.w,),
                SizedBox(height: 20.h,),
                Text(AppString.sinup,style: StringStyle.h1(),),
                SizedBox(height: 20.h,),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        CostomTextfiled(
                          controller: authController.nameController.value,
                          hintTex: "Name",
                          preffixIcon: Icons.person,
                          validator: (value){
                            if(value== null || value.isEmpty){
                              return"name is empty";
                            }
                          },
                        ),
                        SizedBox(height: 10.h,),
                        CostomTextfiled(
                          controller: authController.emailController.value,
                          hintTex: "Email",
                          preffixIcon: Icons.email,
                          validator: (value){
                            if(value== null || value.isEpmpt){
                              return "email is empty";
                            }
                          },
                        ),
                        SizedBox(height: 10.h,),
                        CostomTextfiled(
                          controller: authController.passController.value,
                          hintTex: "Password",
                          isPassword: true,
                          preffixIcon: Icons.lock,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return"password is empty";
                            }
                          },
                        ),
                      ],
                    )),
                SizedBox(height: 5.h,),
                Align(alignment:Alignment.topRight,child: TextButton(onPressed: (){}, child: Text(AppString.forgotPass,style: StringStyle.h1(),))),
                SizedBox(height: 10.h,),
                CostomBodybtn(title: AppString.login, ontab: (){
                  Get.toNamed(Approute.loginScreen);
                }),
                SizedBox(height: 40.h,),
                SizedBox(
                  width: Get.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 100.w,child: Divider(height: 2.h,color: AppColor.blackColor,)),
                      SizedBox(width: 20.w,),
                      Text(AppString.or),
                      SizedBox(width: 20.w,),
                      SizedBox(width: 100.w,child: Divider(height: 20.h,color: AppColor.blackColor,)),

                    ],),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FabGoogleBtn(
                      ontab: (){
                      },
                      iconData: Icons.facebook,
                    ),
                    SizedBox(width: 40.w,),
                    FabGoogleBtn(ontab: (){
                    },
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(text: AppString.haveAcount,style: StringStyle.h1(color: AppColor.grayColor)),
                      TextSpan(text: AppString.login,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(LoginScreen()); // Navigating to Signup screen
                          },
                      ),
                    ]
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
