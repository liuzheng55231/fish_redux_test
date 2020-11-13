import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  int id;
  String title;
  bool itemStatus;

  ItemState({this.id, this.title, this.itemStatus});

  @override
  ItemState clone() {
    return ItemState()
      ..id = id
      ..title = title
      ..itemStatus = itemStatus;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
