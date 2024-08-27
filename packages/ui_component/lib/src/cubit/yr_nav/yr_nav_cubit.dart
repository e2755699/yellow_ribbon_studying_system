import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'yr_nav_state.dart';

class YrNavCubit extends Cubit<YrNavState> {
  YrNavCubit() : super(const YrNavInitial(YrNav.studentInfo));

  void changedNavIndex(int index) {
    emit(YrNavChanged(YrNav.values[index]));
  }
}

enum YrNav {
  studentInfo,
  classInfo;
}
