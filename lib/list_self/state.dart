import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_self/item/state.dart';
import 'package:flutterreduxtest/store/state.dart';

import 'adapter.dart';

class ListSelfState extends MutableSource implements Cloneable<ListSelfState> ,GlobalBaseState{
  List<ItemState> items;

  @override
  ListSelfState clone() {
    return ListSelfState()
      ..store = store;
  }

  @override
  Object getItemData(int index) {
    return items[index];
  }

  @override
  String getItemType(int index) {
    return ListSelfItemAdapter.item_style;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    items[index] = data;
  }

  @override
  StoreModel store;
}

ListSelfState initState(Map<String, dynamic> args) {
  return ListSelfState();
}
