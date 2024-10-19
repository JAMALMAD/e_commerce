import 'dart:async';

import 'package:e_commerce/core/routs.dart';
import 'package:e_commerce/utils/image.dart';
import 'package:e_commerce/view/onbordin_screen/onbording_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Get.offNamed(Approute.onbordingProduct);
    });
  }
  @override

      Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),);
        return Scaffold(
          body: Center(
            child: Image.asset(AppImage.logo, height: 100, width: 100,),
          ),
        );
      }
    }
