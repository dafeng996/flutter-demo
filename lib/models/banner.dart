class Banner {
  late String id, img;
  late int type;

  Banner({this.id = '', this.img = '', this.type = 1});

  Banner.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    img = map['img'];
    type = map['type'];
  }

  Map<String, dynamic> toMap() => {'id': id, 'img': img, 'type': type};
}
