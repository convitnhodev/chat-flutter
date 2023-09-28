import 'package:get/get.dart';



class UserStore extends GetxController {
  static UserStore get to => Get.find();


  final _isLogin = false.obs;

  String token = '';


  bool get isLogin => _isLogin.value;
}