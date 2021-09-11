import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  @override
  _SearchTextField createState() => _SearchTextField();
}

class _SearchTextField extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    Widget textField = Container(
      height: 29,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color.fromARGB(19, 255, 255, 255),
          border:
              Border.all(color: Color.fromARGB(19, 255, 255, 255), width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
          decoration: InputDecoration.collapsed(
            hintText: '搜索',
            hintStyle: TextStyle(fontSize: 14, color: Color(0xffffffff)),
          ),
          style: TextStyle(fontSize: 14, color: Color(0xffffffff))),
    );

    return (Stack(children: [
      textField,
      Positioned(
          top: 8,
          right: 20,
          child: Image(
              width: 14,
              height: 14,
              alignment: Alignment.centerRight,
              image: AssetImage('images/search.png')))
    ]));
  }
}
