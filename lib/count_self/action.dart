import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CountSelfAction { increase,updateCount }

class CountSelfActionCreator {
  static Action countIncrease(){
    return Action(CountSelfAction.increase);
  }

  static Action updateCount(int count){
    return Action(CountSelfAction.updateCount,payload: count);
  }
}
