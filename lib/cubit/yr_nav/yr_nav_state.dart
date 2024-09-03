part of 'yr_nav_cubit.dart';

@immutable
sealed class YrNavState {
  final YrPage page;

  get index => page.index;

  const YrNavState(this.page);
}

final class YrNavInitial extends YrNavState {
  const YrNavInitial(super.page);
}
final class YrNavChanged extends YrNavState {
  const YrNavChanged(super.page);
}
