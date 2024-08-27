import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'yr_theme_state.dart';

class YrThemeCubit extends Cubit<YrThemeState> {
  YrThemeCubit() : super(YrThemeInitial());
}
