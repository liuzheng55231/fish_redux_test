import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/list_edit_self/adapter.dart';

import 'state.dart';
import 'view.dart';

class ListEditSelfPage extends Page<ListEditSelfState, Map<String, dynamic>> {
  ListEditSelfPage()
      : super(
            initState: initState,
            view: buildView,
            dependencies: Dependencies<ListEditSelfState>(
                adapter: NoneConn<ListEditSelfState>() + ListItemAdapter(),
                slots: <String, Dependent<ListEditSelfState>>{
                }),
            middleware: <Middleware<ListEditSelfState>>[
            ],);

}
