import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import './widgets/header.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('HomePage'),),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(children: [Header(), Text('asd'), Text('wwwww')]),
      ),
    );
  }
}
