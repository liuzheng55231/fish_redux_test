import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/main.dart';

import 'action.dart';
import 'state.dart';

/// 使用hide方法，隐藏系统包里面的Action类
import 'package:flutter/cupertino.dart' hide Action;

Effect<FirstSelfState> buildEffect() {
  return combineEffects(<Object, Effect<FirstSelfState>>{
    FirstSelfAction.toSecond: _toSecond,
  });
}

void _toSecond(Action action, Context<FirstSelfState> ctx) async{
  var result = await Navigator.of(ctx.context).pushNamed(RouteConfig.secondPage,arguments: {'data':FirstSelfState.fixedMsg});
  ctx.dispatch(FirstSelfActionCreator.updateMsg( (result as Map)['data']));
}
