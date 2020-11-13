import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<CountSelfState> buildEffect() {
  return combineEffects(<Object, Effect<CountSelfState>>{
    CountSelfAction.increase: _onIncrease,
  });
}

void _onIncrease(Action action, Context<CountSelfState> ctx) {
  int count = ctx.state.count + 1;
  ctx.dispatch(CountSelfActionCreator.updateCount(count));
}
