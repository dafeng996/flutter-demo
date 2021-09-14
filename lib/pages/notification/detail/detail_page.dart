import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailPage'),
      ),
      body: Container(
        child: Obx(() => Text("${this.controller.id.value}")),
      ),
    );
  }
}
