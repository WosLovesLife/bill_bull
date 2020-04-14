// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bill_bull/dao/pojo/tt_search_result.dart';
import 'package:bill_bull/dao/remote/tt_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Counter increments smoke test', () async {
    TtSearchResultResponse response = await ttApi.search('270002');
    print(response);
    expect(response.runtimeType, TtSearchResultResponse);
  });
}
