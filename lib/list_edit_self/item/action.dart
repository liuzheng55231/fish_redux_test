import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ItemAction { onChange }

class ItemActionCreator {
  static Action onChange(int id) {
    return Action(ItemAction.onChange,payload: id);
  }
}
