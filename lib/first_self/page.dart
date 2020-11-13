import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FirstSelfPage extends Page<FirstSelfState, Map<String, dynamic>> {
  FirstSelfPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FirstSelfState>(
                adapter: null,
                slots: <String, Dependent<FirstSelfState>>{
                }),
            middleware: <Middleware<FirstSelfState>>[
            ],);

}
