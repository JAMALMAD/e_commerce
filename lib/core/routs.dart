
import 'package:e_commerce/view/auth_screen/login_screen.dart';
import 'package:e_commerce/view/card_page/congo_screen.dart';
import 'package:e_commerce/view/card_page/favorite_screen.dart';
import 'package:e_commerce/view/card_page/mycard_screen.dart';
import 'package:e_commerce/view/home_page/home_page.dart';
import 'package:e_commerce/view/onbordin_screen/onbording_product.dart';
import 'package:e_commerce/view/onbordin_screen/onbording_product1.dart';
import 'package:e_commerce/view/onbordin_screen/onbording_product2.dart';
import 'package:e_commerce/view/splash_screen/splash_screen.dart';
import 'package:e_commerce/widget/add_card.dart';
import 'package:get/get.dart';

import '../view/auth_screen/controller/sign_screen.dart';

class Approute{
  static String splashScreen = "/splashScreen";
  static String onbordingProduct = "/onbordingProduct";
  static String onbordingProduct1 = "/onbordingProduct1";
  static String onbordingProduct2 = "/onbordingProduct2";
  static String loginScreen = "/loginScreen";
  static String singUp = "/singUp";
  static String homePage = "/homePage";
  static String addCard = "/addCard";
  static String favoritePage = "/favoritePage";
  static String congoScreen = "/congoScreen";
  static String mycard = "/mycard/";
  static List<GetPage>pages = [
    GetPage(name: splashScreen, page: ()=>SplashScreen()),
    GetPage(name: onbordingProduct, page: ()=>OnbordingProduct()),
    GetPage(name: onbordingProduct1, page: ()=>OnbordingProduct1()),
    GetPage(name: onbordingProduct2, page: ()=> OnbordingProduct2()),
    GetPage(name: loginScreen, page: ()=> LoginScreen()),
    GetPage(name: singUp, page: ()=> SignScreen()),
    GetPage(name: homePage, page: ()=> HomePage()),
    GetPage(name: addCard, page: ()=> AddCard()),
    GetPage(name: favoritePage, page: ()=> FavoriteScreen()),
    GetPage(name: congoScreen, page: ()=> CongoScreen()),
    GetPage(name: mycard, page: ()=> MycardScreen()),
  ];
}