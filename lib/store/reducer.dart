import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutterreduxtest/store/action.dart';
import 'package:flutterreduxtest/store/state.dart';

Reducer<GlobalState> buildReducer(){
  return asReducer(
    <Object,Reducer<GlobalState>>{
      GlobalAction.changeThemeColor: _onChageThemeColor,
    },
  );
}

List<Color> _colors = [Colors.green,Colors.red,Colors.black,Colors.blue,Colors.brown];


GlobalState _onChageThemeColor(GlobalState state,Action action){
  final Color next = _colors[((_colors.indexOf(state.store.themeColor) +1 )% _colors.length)];
  return state.clone()..store.themeColor = next;
}

