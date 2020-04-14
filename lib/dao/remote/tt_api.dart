import 'dart:convert';

import 'package:bill_bull/dao/pojo/tt_search_result.dart';
import 'package:bill_bull/dao/remote/net_client.dart';

/// 天天基金API
class _TtApi {
  Future<TtSearchResultResponse> search(String key) async {
    final searchApi = 'http://fundsuggest.eastmoney.com/FundSearch/api/FundSearchAPI.ashx';
    final queryParameters = {
      'm': 1,
      'key': key,
    };
    final response = await netClient.dio.get(searchApi, queryParameters: queryParameters);
    return TtSearchResultResponse.map(jsonDecode(response.data));
  }
}

_TtApi ttApi = _TtApi();
