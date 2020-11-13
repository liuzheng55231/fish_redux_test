import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: InkWell(
      onTap: (){},
      child: ListTile(
        title: Text(state.title),
        trailing: Checkbox(
          value: state.itemStatus,
          onChanged: (value) => dispatch(ItemActionCreator.onChange(state.id)),
        ),
      ),
    ),
  );
}
