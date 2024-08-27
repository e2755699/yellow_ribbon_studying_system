part of 'yr_nav_cubit.dart';

@immutable
sealed class YrNavState {
  final YrNav yrNav;

  get navIndex => yrNav.index;

  const YrNavState(this.yrNav);
}

final class YrNavInitial extends YrNavState {
  const YrNavInitial(super.yrNav);
}
final class YrNavChanged extends YrNavState {
  const YrNavChanged(super.yrNav);
}
