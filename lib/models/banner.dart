class Banner {
  late String title, image;

  Banner({this.title = '', this.image = ''});

  Banner.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    image = map['image'];
  }

  Map<String, dynamic> toMap() => {'title': title, 'image': image};
}
