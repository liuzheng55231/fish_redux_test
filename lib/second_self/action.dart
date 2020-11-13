import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SecondSelfAction { backFirst }

class SecondSelfActionCreator {
  static Action backFirst() {
    return const Action(SecondSelfAction.backFirst);
  }
}
