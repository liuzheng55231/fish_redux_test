import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountSelfState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountSelfState>>{
      CountSelfAction.updateCount: _updateCount,
    },
  );
}

CountSelfState _updateCount(CountSelfState state, Action action) {
  final CountSelfState newState = state.clone();
  newState..count = action.payload;
  return newState;
}
