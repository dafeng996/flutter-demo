import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_app/pages/home/home_controller.dart';
import './search_text_field.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget pageView = GetBuilder<HomeController>(
        builder: (c) => Obx(() => PageView(
            children: c.bannerList
                .map((banner) => Obx(() => Text(
                      "${banner.value.title}",
                      style: TextStyle(color: Colors.white),
                    )))
                .toList())));

    Widget bannerSlide = Container(
      height: 210,
      decoration: BoxDecoration(color: Colors.black),
      child: pageView,
    );

    Widget bannerSlideContainer = Stack(
      children: [
        bannerSlide,
        Container(
          child: SearchTextField(),
          margin: EdgeInsets.all(20),
        )
      ],
    );

    return (Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Color(0xff6571D7),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          height: 185,
        ),
        Container(
          height: 210,
          padding: EdgeInsets.fromLTRB(20, 58, 20, 0),
          child: bannerSlideContainer,
        )
      ],
    ));
  }
}
