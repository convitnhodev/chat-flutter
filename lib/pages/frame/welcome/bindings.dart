import 'package:chatty/pages/frame/welcome/controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get.dart';

class WelcomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }

}