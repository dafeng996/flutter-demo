import 'package:get/get.dart';

class DetailController extends GetxController {
  RxString id = '11111'.obs;

  @override
  void onReady() {
    print(Get.parameters);
    if (Get.parameters.containsKey('id')) {
      id(Get.parameters['id']);
    }
    super.onReady();
  }
}
