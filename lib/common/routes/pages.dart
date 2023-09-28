import 'package:chatty/common/middlewares/router_auth.dart';
import 'package:chatty/common/routes/names.dart';
import 'package:chatty/pages/frame/message/index.dart';
import 'package:chatty/pages/frame/welcome/index.dart';
import 'package:chatty/pages/frame/sign_in//index.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  

  static List<String> history = [];


  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding()
      ),

    GetPage(
        name: AppRoutes.Message,
        page: () => const MessagePage(),
        binding: MessageBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1)
      ],
    ),


    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),



  ];
}