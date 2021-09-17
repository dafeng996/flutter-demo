import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle(
      {Key? key, this.iconUrl = "", this.title = "", this.url = ""})
      : super(key: key);

  final String iconUrl;
  final String title;
  final String url;

  Widget _buildContext(context) {
    return (Row(
      children: [
        Image(image: AssetImage(this.iconUrl)),
        Expanded(
            child: Container(
          child: Text(
            this.title,
            style: TextStyle(
                fontSize: 18,
                color: Color(0xff222222),
                fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        )),
        Text(
          '更多',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff999999),
              fontWeight: FontWeight.w400),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return (Column(children: [_buildContext(context)]));
  }
}
