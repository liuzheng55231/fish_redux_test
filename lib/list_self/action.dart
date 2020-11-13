import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ListSelfAction { updateItem }

class ListSelfActionCreator {
  static Action updateItem(var list) {
    return Action(ListSelfAction.updateItem,payload: list);
  }
}
