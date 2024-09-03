import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:yellow_ribbon_studying_system/enum/yr_page.dart';

part 'yr_nav_state.dart';

class YrNavCubit extends Cubit<YrNavState> {
  YrNavCubit(page) : super(YrNavInitial(page));

  void changedNavIndex(int index) {
    emit(YrNavChanged(YrPage.values[index]));
  }
}
