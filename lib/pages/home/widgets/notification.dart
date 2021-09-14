import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Container(
        height: 41,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
        padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(2, 1),
              color: Color.fromRGBO(101, 113, 215, 0.2),
              blurRadius: 10)
        ]),
        child: Row(
          children: [
            Image(
                width: 15,
                height: 16,
                alignment: Alignment.center,
                image: AssetImage('images/shengyin1.png')),
            Container(
                child: Text('公告',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF222222),
                        fontWeight: FontWeight.w600)),
                margin: EdgeInsets.fromLTRB(5, 0, 0, 0)),
            Expanded(
                child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(children: [
                      Expanded(
                          child: GestureDetector(
                              onTap: () => Get.toNamed('/notification/detail',
                                  parameters: {"id": 1.toString()}),
                              child: Text('aasdasdasdasd'))),
                      Text('2022-01-22')
                    ]))),
            TextButton(
                onPressed: () => Get.toNamed('/notification/list'),
                child: Text(
                  '更多',
                  style: TextStyle(color: Color(0xffffffff), fontSize: 12),
                ),
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6571D7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0))))),
          ],
        )));
  }
}
