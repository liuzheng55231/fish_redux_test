import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_self/bean/item_detail_bean_entity.dart';
import 'package:flutterreduxtest/generated/json/base/json_convert_content.dart';
import 'package:flutterreduxtest/list_self/item/state.dart';

import 'action.dart';
import 'state.dart';

Effect<ListSelfState> buildEffect() {
  return combineEffects(<Object, Effect<ListSelfState>>{
    Lifecycle.initState:_init,
  });
}

Future<void> _init(Action action, Context<ListSelfState> ctx) async {
  String apiUrl = "https://www.wanandroid.com/project/list/1/json";
  Response response = await Dio().get(apiUrl);
  ItemDetailBeanEntity itemDetailBeanEntity = JsonConvert.fromJsonAsT(response.data);
  List<ItemDetailBeanDataData> itemDetails = itemDetailBeanEntity.data.datas;
  List<ItemState> items = List.generate(itemDetails.length, (index) {
    return ItemState(itemDetail: itemDetails[index]);
  });
  ctx.dispatch(ListSelfActionCreator.updateItem(items));


}
