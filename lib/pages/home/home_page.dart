import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import './widgets/header.dart';
import './widgets/notification.dart' as HomePageWidgets;

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(controller.bannerList);
    return Scaffold(
      //appBar: AppBar(
      //    title: Obx(() => Text("index: ${controller.bannerList.length}"))),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(children: [Header(), HomePageWidgets.Notification()]),
      ),
    );
  }
}
