
import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_self/state.dart';

import 'item/component.dart';

class ListSelfItemAdapter extends SourceFlowAdapter<ListSelfState>{
  static const String item_style = "project_tab";


  ListSelfItemAdapter()
    : super(
    pool: <String,Component<Object>>{
      item_style:ItemComponent()
    }
  );
}