import 'package:dio/dio.dart';

class _NetClient{
  final Dio dio = Dio();
  _NetClient(){
    // 配置dio实例
    dio.options.connectTimeout = 10000; // 10s
    dio.options.receiveTimeout = 10000;
  }
}

_NetClient netClient = _NetClient();