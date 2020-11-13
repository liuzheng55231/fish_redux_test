import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SecondSelfPage extends Page<SecondSelfState, Map<String, dynamic>> {
  SecondSelfPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SecondSelfState>(
                adapter: null,
                slots: <String, Dependent<SecondSelfState>>{
                }),
            middleware: <Middleware<SecondSelfState>>[
            ],);

}
