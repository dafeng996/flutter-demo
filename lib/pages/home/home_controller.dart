import 'package:get/get.dart';
import '../../services/common_service.dart';

class HomeController extends GetxController {
  static CommonService commonService = CommonService();

  @override
  void onReady() {
    commonService.getBannerList();
    super.onReady();
  }
}
