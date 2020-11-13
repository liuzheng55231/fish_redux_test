import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<ItemState>>{
      ItemAction.onChange: _onChange,
    },
  );
}

ItemState _onChange(ItemState state, Action action) {
  if(state.id == action.payload){
    return state.clone()..itemStatus = !state.itemStatus;
  }
  return state;
}
