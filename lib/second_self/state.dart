import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/store/state.dart';

class SecondSelfState implements Cloneable<SecondSelfState> ,GlobalBaseState{

  static const String fixedMsg = "这是第二页面需要传递的值：hijklmn";

  String msg;

  @override
  SecondSelfState clone() {
    return SecondSelfState()..msg = msg
    ..store = store;
  }

  @override
  StoreModel store;
}

SecondSelfState initState(Map<String, dynamic> args) {
  return SecondSelfState()..msg = args['data'];
}
