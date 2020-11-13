import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CountSelfPage extends Page<CountSelfState, Map<String, dynamic>> {
  CountSelfPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CountSelfState>(
                adapter: null,
                slots: <String, Dependent<CountSelfState>>{
                }),
            middleware: <Middleware<CountSelfState>>[
            ],);

}
