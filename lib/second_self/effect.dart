import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';


import 'package:flutter/cupertino.dart' hide Action;

Effect<SecondSelfState> buildEffect() {
  return combineEffects(<Object, Effect<SecondSelfState>>{
    SecondSelfAction.backFirst: _backFirst,
  });
}

void _backFirst(Action action, Context<SecondSelfState> ctx) {
  Navigator.pop(ctx.context,{'data':SecondSelfState.fixedMsg});
}
