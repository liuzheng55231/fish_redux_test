import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_edit_self/adapter.dart';
import 'package:flutterreduxtest/list_edit_self/item/state.dart';
import 'package:flutterreduxtest/store/state.dart';

class ListEditSelfState extends MutableSource implements Cloneable<ListEditSelfState> ,GlobalBaseState{
  List<ItemState> items;

  @override
  ListEditSelfState clone() {
    return ListEditSelfState()
      ..items = items
      ..store = store
    ;
  }

  @override
  Object getItemData(int index) {
    // TODO: implement getItemData
    return items[index];
  }

  @override
  String getItemType(int index) {
    // TODO: implement getItemType
    return ListItemAdapter.itemName;
  }

  @override
  // TODO: implement itemCount
  int get itemCount => items.length;

  @override
  void setItemData(int index, Object data) {
    // TODO: implement setItemData
    items[index] = data;
  }

  @override
  StoreModel store;
}

ListEditSelfState initState(Map<String, dynamic> args) {
  return ListEditSelfState()..items = [
    ItemState(id:1,title:"列表Item-1",itemStatus:false),
    ItemState(id:2,title:"列表Item-2",itemStatus:false),
    ItemState(id:3,title:"列表Item-3",itemStatus:false),
    ItemState(id:4,title:"列表Item-4",itemStatus:false),
    ItemState(id:5,title:"列表Item-5",itemStatus:false),
    ItemState(id:6,title:"列表Item-6",itemStatus:false),
    ItemState(id:7,title:"列表Item-7",itemStatus:false),
  ];
}
