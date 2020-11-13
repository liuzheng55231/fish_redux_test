import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ListSelfState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListSelfState>>{
      ListSelfAction.updateItem: _updateItem,
    },
  );
}

ListSelfState _updateItem(ListSelfState state, Action action) {
  final ListSelfState newState = state.clone();
  newState..items = action.payload;
  return newState;
}
