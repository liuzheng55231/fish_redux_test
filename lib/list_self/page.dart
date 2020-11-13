import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_self/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ListSelfPage extends Page<ListSelfState, Map<String, dynamic>> {
  ListSelfPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ListSelfState>(
                adapter: NoneConn<ListSelfState>() + ListSelfItemAdapter(),
                slots: <String, Dependent<ListSelfState>>{
                }),
            middleware: <Middleware<ListSelfState>>[
            ],);

}
