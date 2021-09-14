import 'package:get/get.dart';

import '../pages/home/home_page.dart';
import '../pages/home/home_bindings.dart';
import '../pages/login/login_page.dart';
import '../pages/login/login_bindings.dart';
import '../pages/register/register_page.dart';
import '../pages/register/register_bindings.dart';
import '../pages/notification/list/list_page.dart' as NotificationPage;
import '../pages/notification/detail/detail_page.dart' as NotificationPage;
import '../pages/notification/list/list_bindings.dart' as NotificationBindings;
import '../pages/notification/detail/detail_bindings.dart'
    as NotificationBindings;

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
        binding: RegisterBindings()),
    GetPage(
        name: Routes.NOTIFICATION_LIST,
        page: () => NotificationPage.ListPage(),
        binding: NotificationBindings.ListBindings()),
    GetPage(
        name: Routes.NOTIFICATION_DETAIL,
        page: () => NotificationPage.DetailPage(),
        binding: NotificationBindings.DetailBindings())
  ];
}
