import '../shared/utils/dio.dart';
import '../models/banner.dart';

class CommonService {
  getBannerList() async {
    final response = await dio.get('/banners');
    Map<String, dynamic> result = response.data as Map<String, dynamic>;
    return (result['data'] as List<dynamic>)
        .map((e) => Banner.fromMap(e))
        .toList();
  }
}
