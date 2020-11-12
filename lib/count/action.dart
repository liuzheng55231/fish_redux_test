import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum CountAction { increase, updateCount }

class CountActionCreator {
  ///去effect层去处理自增数据
  static Action countIncrease() {
    return Action(CountAction.increase);
  }
  ///去reducer层更新数据，传参可以放在Action类中的payload字段中，payload是dynamic类型，可传任何类型
  static Action updateCount(int count) {
    return Action(CountAction.updateCount, payload: count);
  }
}
