import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart' hide Action;
import 'package:flutterreduxtest/broadcast/action.dart';
import 'package:flutterreduxtest/main.dart';
import 'package:flutterreduxtest/store/action.dart';
import 'package:flutterreduxtest/store/store.dart';

import 'action.dart';
import 'state.dart';

Effect<GuideState> buildEffect() {
  return combineEffects(<Object, Effect<GuideState>>{
    GuideAction.toCount: _toCount,
    GuideAction.toJump: _toJump,
    GuideAction.toList: _toList,
    GuideAction.toListEdit: _toListEdit,
//    GuideAction.toComponent: _toComponent,
    GuideAction.switchTheme: _switchTheme,
    //接受发送的广播消息
    BroadcastAction.toNotify: _receiveNotify,
  });
}

void _toCount(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.countPage);
}

void _toJump(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.firstPage);
}

void _toList(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.listPage);
}


void _toListEdit(Action action, Context<GuideState> ctx) {
  Navigator.pushNamed(ctx.context, RouteConfig.listEditPage);
}

///全局切换主体
void _switchTheme(Action action, Context<GuideState> ctx) {
  GlobalStore.store.dispatch(GlobalActionCreator.onChangeThemeColor());
}

///表明一处发送，多处接受
void _receiveNotify(Action action, Context<GuideState> ctx) async {
  ///接受广播
  print("导航页面:${action.payload}");
}