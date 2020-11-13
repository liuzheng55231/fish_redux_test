import 'package:fish_redux/fish_redux.dart';
///需要使用hide隐藏Page
import 'package:flutter/cupertino.dart'hide Page;
import 'package:flutter/material.dart' hide Page;
import 'package:flutterreduxtest/first_self/page.dart';
import 'package:flutterreduxtest/second/page.dart';
import 'package:flutterreduxtest/second_self/page.dart';
import 'package:flutterreduxtest/store/state.dart';
import 'package:flutterreduxtest/store/store.dart';

import 'count_exellent/page.dart';
import 'count_self/page.dart';
import 'first/page.dart';
import 'guide/page.dart';
import 'list_edit_self/page.dart';
import 'list_self/page.dart';

void main() {
  runApp(createApp());
}



//Widget createApp() {
//
//  _updateState(){
//    return (Object pageState,GlobalState appState){
//      final GlobalBaseState p = pageState;
//
//      if(pageState is Cloneable){
//        final Object copy = pageState.clone();
//        final GlobalBaseState newState = copy;
//        if(p.themeColor != appState.themeColor){
//          newState.themeColor = appState.themeColor;
//        }
//        return newState;
//      }
//      return pageState;
//    };
//  }
//
//
//  ///定义路由
//  final AbstractRoutes routes = PageRoutes(
//    ///全局状态管理:只有特定的范围的Page(State继承了全局状态),才需要建立和 AppStore 的连接关系
//  visitor: (String path,Page<Object,dynamic> page){
//    if(page.isTypeof<GlobalBaseState>()){
//      page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
//    }
//  },
//
//
//    pages: <String, Page<Object, dynamic>>{
//      ///导航页面
//      "GuidePage": GuidePage(),
//      ///计数器模块演示
//      "CountPage": CountPage(),
//      "CountSelfPage": CountSelfPage(),
//      ///页面传值跳转模块演示
//      "FirstPage": FirstPage(),
//      "SecondPage": SecondPage(),
//      "FirstSelfPage": FirstSelfPage(),
//      "SecondSelfPage": SecondSelfPage(),
//      ///列表模块演示
//      "ListSelfPage": ListSelfPage(),
//      //列表修改
//      "ListEditSelfPage":ListEditSelfPage(),
//    },
//  );
//
//  return MaterialApp(
//    title: 'FishRedux',
//    home: routes.buildPage("GuidePage", null), //作为默认页面
//    onGenerateRoute: (RouteSettings settings) {
//      //ios页面切换风格
//      return CupertinoPageRoute(builder: (BuildContext context) {
//        return routes.buildPage(settings.name, settings.arguments);
//      });
//    },
//  );
//}



Widget createApp() {
  return MaterialApp(
    title: 'FishRedux',
    home: RouteConfig.routes.buildPage(RouteConfig.guidePage, null), //作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      //ios页面切换风格
      return CupertinoPageRoute(builder: (BuildContext context) {
        return RouteConfig.routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}

///路由管理
class RouteConfig {
  ///定义你的路由名称比如   static final String routeHome = 'page/home';
  ///导航页面
  static const String guidePage = 'page/guide';

  ///计数器页面
  static const String countPage = 'page/count';

  ///页面传值跳转模块演示
  static const String firstPage = 'page/first';
  static const String secondPage = 'page/second';

  ///列表模块演示
  static const String listPage = 'page/list';
  static const String listEditPage = 'page/listEdit';

  static final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      ///将你的路由名称和页面映射在一起，比如：RouteConfig.homePage : HomePage(),
      RouteConfig.guidePage: GuidePage(),
      RouteConfig.countPage: CountSelfPage(),
      RouteConfig.firstPage: FirstSelfPage(),
      RouteConfig.secondPage: SecondSelfPage(),
      RouteConfig.listPage: ListSelfPage(),
      RouteConfig.listEditPage: ListEditSelfPage(),
    },
    visitor: StoreConfig.visitor,
  );
}

///全局模式
class StoreConfig {
  ///全局状态管理
  static _updateState() {
    return (Object pageState, GlobalState appState) {
      final GlobalBaseState p = pageState;

      if (pageState is Cloneable) {
        final Object copy = pageState.clone();
        final GlobalBaseState newState = copy;

        if (p.store == null) {
          ///这地方的判断是必须的，判断第一次store对象是否为空
          newState.store = appState.store;
        } else {
          /// 这地方增加字段判断，是否需要更新
          if ((p.store.themeColor != appState.store.themeColor)) {
            newState.store.themeColor = appState.store.themeColor;
          }

          /// 如果增加字段，同理上面的判断然后赋值...

        }

        /// 返回新的 state 并将数据设置到 ui
        return newState;
      }
      return pageState;
    };
  }

  static visitor(String path, Page<Object, dynamic> page) {
    if (page.isTypeof<GlobalBaseState>()) {
      ///建立AppStore驱动PageStore的单向数据连接
      ///参数1 AppStore  参数2 当AppStore.state变化时,PageStore.state该如何变化
      page.connectExtraStore<GlobalState>(GlobalStore.store, _updateState());
    }
  }
}