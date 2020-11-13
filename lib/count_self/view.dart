import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CountSelfState state, Dispatch dispatch, ViewService viewService) {
  return _bodyWidget(state,dispatch);
}

Widget _bodyWidget(CountSelfState state,Dispatch dispatch){
  return Scaffold(
    appBar: AppBar(
      title: Text('FishRedux'),
      backgroundColor: state.store.themeColor,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('你已经点击了${state.count.toString()}次了'),
        ],
      ),
    ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){
      dispatch(CountSelfActionCreator.countIncrease());
  },
  child: Icon(Icons.add),
    ),
  );
}
