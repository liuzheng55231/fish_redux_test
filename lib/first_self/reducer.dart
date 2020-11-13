import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FirstSelfState> buildReducer() {
  return asReducer(
    <Object, Reducer<FirstSelfState>>{
      FirstSelfAction.updateMsg: _updateMsg,
    },
  );
}

FirstSelfState _updateMsg(FirstSelfState state, Action action) {
  final FirstSelfState newState = state.clone();
  newState..msg = action.payload;
  return newState;
}
