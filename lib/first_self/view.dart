import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FirstSelfState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state, dispatch);
}

Widget _bodyWidget(FirstSelfState state, Dispatch dispatch){
  return Scaffold(
    appBar: AppBar(
      title: Text("第一页"),
      backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Text('这是第二个页面返回的值\n${state.msg}'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        dispatch(FirstSelfActionCreator.toSecond());
      },
      child: Icon(Icons.arrow_forward),
    ),
  );
}
