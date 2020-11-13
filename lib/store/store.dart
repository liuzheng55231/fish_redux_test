import 'package:fish_redux/fish_redux.dart';
import 'package:flutterreduxtest/store/state.dart';
import 'package:flutterreduxtest/store/reducer.dart';

class GlobalStore{
  static Store<GlobalState> _globalStore;
  static Store<GlobalState> get store => _globalStore ??= createStore(GlobalState() , buildReducer());
}