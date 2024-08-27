part of 'yr_theme_cubit.dart';

@immutable
sealed class YrThemeState {
  final YrTheme theme;
  const YrThemeState(this.theme);
}

final class YrThemeInitial extends YrThemeState {
  const YrThemeInitial(super.theme);
}

final class YrThemeChanged extends YrThemeState {
  const YrThemeChanged(super.theme);
}
