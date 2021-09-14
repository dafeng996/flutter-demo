import 'package:get/get.dart';
import './list_controller.dart';

class ListBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ListController());
    }
}