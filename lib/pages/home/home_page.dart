import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import './widgets/search_text_field.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //头部banner容器
    Widget bannerSlideContainer = Stack(
      children: [SearchTextField()],
    );

    //头部容器
    Widget headerContainer = Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0xff6571D7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          height: 186,
        ),
        Container(
          height: 210,
          padding: EdgeInsets.fromLTRB(20, 58, 20, 0),
          child: bannerSlideContainer,
        )
      ],
    );

    return Scaffold(
      //appBar: AppBar(title: const Text('HomePage'),),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(children: [headerContainer, Text('asd'), Text('wwwww')]),
      ),
    );
  }
}
