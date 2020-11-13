import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_edit_self/item/component.dart';
import 'package:flutterreduxtest/list_edit_self/state.dart';

class ListItemAdapter extends SourceFlowAdapter<ListEditSelfState>{
  static const String itemName = "item";

  ListItemAdapter():super(
    pool: <String,Component<Object>>{itemName:ItemComponent()}
  );
}