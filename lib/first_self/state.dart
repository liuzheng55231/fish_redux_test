import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/store/state.dart';

class FirstSelfState implements Cloneable<FirstSelfState>,GlobalBaseState {

  static const String fixedMsg = "我是第一个页面需要传递的值：abcdefg";

  String msg;

  @override
  FirstSelfState clone() {
    return FirstSelfState()
      ..msg = msg
      ..store = store
    ;
  }

  @override
  StoreModel store;
}

FirstSelfState initState(Map<String, dynamic> args) {
  return FirstSelfState()..msg = "暂无";
}
