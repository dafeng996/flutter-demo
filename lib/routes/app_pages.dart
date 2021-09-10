import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/home/home_bindings.dart';
import '../pages/login/login_page.dart';
import '../pages/login/login_bindings.dart';
import '../pages/register/register_page.dart';
import '../pages/register/register_bindings.dart';

part 'app_routes.dart';

class AppPages {
  static const INITAL = Routes.HOME;

  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBindings()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBindings()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterPage(),
        binding: RegisterBindings())
  ];
}
