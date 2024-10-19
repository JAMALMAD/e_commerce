import 'package:e_commerce/view/auth_screen/controller/auth_controller.dart';
import 'package:get/get.dart';

class DependencyInjectoin extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> AuthController());
  }

}