import 'dart:convert';
import 'dart:html';

import 'package:chatty/common/entities/user.dart';
import 'package:chatty/common/store/storage.dart';
import 'package:chatty/common/values/storage.dart';
import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  final _isLogin = false.obs;

  String token = '';

  final _profile = UserItem().obs;

  bool get isLogin => _isLogin.value;
  UserItem get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty) {
      _isLogin.value = true;
      _profile(UserItem.fromJson(jsonDecode(profileOffline)));
    }
  }
}
