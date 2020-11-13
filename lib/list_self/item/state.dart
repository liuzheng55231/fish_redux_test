import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_self/bean/item_detail_bean_entity.dart';

class ItemState implements Cloneable<ItemState> {
  ItemDetailBeanDataData itemDetail;

  ItemState({
    this.itemDetail
  });

  @override
  ItemState clone() {
    return ItemState()..itemDetail = itemDetail;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
