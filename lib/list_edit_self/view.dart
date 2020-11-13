import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(ListEditSelfState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text('列表编辑'),
      backgroundColor: state.store.themeColor,),
    body: ListView.builder(itemBuilder: viewService.buildAdapter().itemBuilder,itemCount: viewService.buildAdapter().itemCount,),
  );
}
