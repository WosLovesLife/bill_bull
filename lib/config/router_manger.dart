import 'package:bill_bull/feature/fund/fund_detail_activity.dart';
import 'package:bill_bull/feature/main/main_activity.dart';
import 'package:bill_bull/widget/page_route_anim.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RouteName {
  static const String main = 'main';
  static const String fundDetail = 'fundDetail';
  static const String setting = 'setting';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.main:
        return NoAnimRouteBuilder(MainActivity());
      case RouteName.fundDetail:
        final fundCode = settings.arguments as String;
        return FadeRouteBuilder(FundDetailActivity(fundCode: fundCode));
      case RouteName.setting:
        final fundCode = settings.arguments as String;
        return FadeRouteBuilder(FundDetailActivity(fundCode: fundCode));
//      case RouteName.tab:
//        return NoAnimRouteBuilder(TabNavigator());
//      case RouteName.homeSecondFloor:
//        return SlideTopRouteBuilder(MyBlogPage());
//      case RouteName.login:
//        return CupertinoPageRoute(
//            fullscreenDialog: true, builder: (_) => LoginPage());
//      case RouteName.register:
//        return CupertinoPageRoute(builder: (_) => RegisterPage());
//      case RouteName.articleDetail:
//        var article = settings.arguments as Article;
//        return CupertinoPageRoute(builder: (_) {
//          // 根据配置调用页面
//          return StorageManager.sharedPreferences.getBool(kUseWebViewPlugin) ??
//                  false
//              ? ArticleDetailPluginPage(
//                  article: article,
//                )
//              : ArticleDetailPage(
//                  article: article,
//                );
//        });
//      case RouteName.structureList:
//        var list = settings.arguments as List;
//        Tree tree = list[0] as Tree;
//        int index = list[1];
//        return CupertinoPageRoute(
//            builder: (_) => ArticleCategoryTabPage(tree, index));
//      case RouteName.favouriteList:
//        return CupertinoPageRoute(builder: (_) => FavouriteListPage());
//      case RouteName.setting:
//        return CupertinoPageRoute(builder: (_) => SettingPage());
//      case RouteName.coinRecordList:
//        return CupertinoPageRoute(builder: (_) => CoinRecordListPage());
//      case RouteName.coinRankingList:
//        return CupertinoPageRoute(builder: (_) => CoinRankingListPage());
      default:
        return CupertinoPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}

/// Pop路由
class PopRoute extends PopupRoute {
  final Duration _duration = Duration(milliseconds: 300);
  Widget child;

  PopRoute({@required this.child});

  @override
  Color get barrierColor => null;

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(
      BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return child;
  }

  @override
  Duration get transitionDuration => _duration;
}
