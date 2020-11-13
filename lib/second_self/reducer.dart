import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SecondSelfState> buildReducer() {
  return asReducer(
    <Object, Reducer<SecondSelfState>>{
//      SecondSelfAction.backFirst: _onAction,
    },
  );
}

SecondSelfState _onAction(SecondSelfState state, Action action) {
  final SecondSelfState newState = state.clone();
  return newState;
}
