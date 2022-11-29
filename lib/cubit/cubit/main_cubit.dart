import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  int _currentPageIndex = 0;

  void onBottomBarChanged(int index) {
    _currentPageIndex = index;
    emit(MainInitial());
  }

  int get currentPageIndex => _currentPageIndex;
}
