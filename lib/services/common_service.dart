import 'dart:convert';

import '../shared/utils/dio.dart';
import '../models/banner.dart';

class CommonService {
  getBannerList() async {
    final response = await dio.post('/banner/list', data: {'type': 2});
    String arrayText = '{"tags": ["dart", "flutter", "json"]}';
    print(jsonDecode(arrayText));
    //Map<String, dynamic> data = json.decode('{a: "1", s: "2"}');
    //print(data);
    //var list = (response.data as List<Map<String, dynamic>>)
    //    .map((e) => Banner.fromMap(e))
    //    .toList();
    //print(list);
  }
}
