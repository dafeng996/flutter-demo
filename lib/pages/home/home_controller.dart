import 'package:get/get.dart';
import 'package:start_app/models/banner.dart';
import '../../services/common_service.dart';

class HomeController extends GetxController {
  static CommonService commonService = CommonService();

  final RxList<Rx<Banner>> bannerList = RxList<Rx<Banner>>();

  @override
  void onReady() async {
    List<Banner> bannerList = await commonService.getBannerList();
    bannerList.forEach((element) {
      this.bannerList.add(element.obs);
    });
    print(this.bannerList);
    print('onready');
    super.onReady();
  }
}
