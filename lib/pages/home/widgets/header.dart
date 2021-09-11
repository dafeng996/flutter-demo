import 'package:flutter/material.dart';
import './search_text_field.dart';

class _Swipper {
  _Swipper({this.text = ''}) : super();

  final String text;
}

class Header extends StatelessWidget {
  final List<_Swipper> datalist = [
    _Swipper(text: '1'),
    _Swipper(text: '2'),
    _Swipper(text: '3'),
    _Swipper(text: '4'),
    _Swipper(text: '5'),
    _Swipper(text: '6'),
  ];

  static get text => null;

  @override
  Widget build(BuildContext context) {
    Widget bannerSlide = Container(
      height: 210,
      decoration: BoxDecoration(color: Colors.black),
      child: PageView(
        children: datalist
            .map((e) => Text(
                  e.text,
                  style: TextStyle(color: Colors.white),
                ))
            .toList(),
      ),
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
