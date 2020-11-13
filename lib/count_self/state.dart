import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/store/state.dart';

class CountSelfState implements Cloneable<CountSelfState>, GlobalBaseState {
  int count;

  @override
  CountSelfState clone() {
    return CountSelfState()
      ..count = count
      ..store = store;
  }

  @override
  StoreModel store;
}

CountSelfState initState(Map<String, dynamic> args) {
  return CountSelfState()..count = 0;
  ;
}
