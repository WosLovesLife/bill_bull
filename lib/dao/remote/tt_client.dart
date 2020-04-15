import 'package:bill_bull/dao/remote/base_net_client.dart';
import 'package:flutter/foundation.dart';


final Http ttClient = Http();

class Http extends BaseHttp {
  @override
  void init() {
    options.baseUrl = 'https://www.pgyer.com/apiv2/';
    interceptors.add(TtInterceptor());
  }
}

/// App相关 API
class TtInterceptor extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options) async {
    debugPrint('---api-request--->url--> ${options.baseUrl}${options.path}' +
        ' queryParameters: ${options.queryParameters}');
    return options;
  }

  @override
  onResponse(Response response) {
    TtResponseData respData = TtResponseData.fromJson(response.data);
    if (respData.success) {
      response.data = respData.data;
      return ttClient.resolve(response);
    } else {
      throw NotSuccessException.fromRespData(respData);
    }
  }
}

class TtResponseData extends BaseResponseData {
  bool get success => code == 0;

  TtResponseData.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'];
  }
}