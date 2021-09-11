import 'package:dio/dio.dart';

import '../../configs/app_config.dart';

BaseOptions options = BaseOptions(
    baseUrl: AppConfig.Network.baseUrl,
    connectTimeout: AppConfig.Network.connectTimeout,
    receiveTimeout: AppConfig.Network.receiveTimeout);

Dio dio = Dio(options);
