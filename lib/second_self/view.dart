import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SecondSelfState state, Dispatch dispatch, ViewService viewService) {
  return WillPopScope(child: _bodyWidget(state, dispatch),
      onWillPop: (){
    dispatch(SecondSelfActionCreator.backFirst());
    return Future.value(false);
      });
}

Widget _bodyWidget(SecondSelfState state,Dispatch dispatch){
  return Scaffold(
    appBar: AppBar(title: Text('第二页'),
      backgroundColor: state.store.themeColor,),
    body: Center(
      child: Text('这是第一页面传递过来的值：\n${state.msg}'),
    ),

  );
}
