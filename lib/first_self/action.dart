import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstSelfAction { toSecond, updateMsg }

class FirstSelfActionCreator {
  static Action toSecond() {
    return const Action(FirstSelfAction.toSecond);
  }
  static Action updateMsg(String msg) {
    return Action(FirstSelfAction.updateMsg,payload: msg);
  }
}
