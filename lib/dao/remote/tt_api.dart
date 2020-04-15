import 'dart:convert';

import 'package:bill_bull/dao/pojo/tt_search_result.dart';
import 'package:bill_bull/dao/remote/tt_client.dart';

/// 天天基金API
class _TtApi {
  Future<TtSearchResult> search(String key) async {
    final searchApi = 'http://fundsuggest.eastmoney.com/FundSearch/api/FundSearchAPI.ashx';
    final queryParameters = {
      'm': 1,
      'key': key,
    };
    final response = await ttClient.get(searchApi, queryParameters: queryParameters);
    return response.data.map<TtSearchResult>((data) {
      return TtSearchResult.map(data);
    }).toList();
  }
}

_TtApi ttApi = _TtApi();
