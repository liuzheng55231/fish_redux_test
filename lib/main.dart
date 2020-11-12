import 'package:fish_redux/fish_redux.dart';
///需要使用hide隐藏Page
import 'package:flutter/cupertino.dart'hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutterreduxtest/second/page.dart';

import 'count_exellent/page.dart';
import 'first/page.dart';

void main() {
  runApp(createApp());
}



Widget createApp() {
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      ///计数器模块演示
      "CountPage": CountPage(),
      ///页面传值跳转模块演示
      "FirstPage": FirstPage(),
      "SecondPage": SecondPage(),
    },
  );

  return MaterialApp(
    title: 'FishRedux',
    home: routes.buildPage("FirstPage", null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}