part of 'bottom_navigation_bar_bloc.dart';

abstract class BottomNavigationBarState extends Equatable {
  const BottomNavigationBarState();
}

class HomeState extends BottomNavigationBarState {
  final int index = 0;
  final String title = 'Home';

  @override
  List<Object> get props => [index, title];
}

class ForumState extends BottomNavigationBarState {
  final int index = 1;
  final String title = 'Forum';

  @override
  List<Object> get props => [index, title];
}

class FavoriteState extends BottomNavigationBarState {
  final int index = 2;
  final String title = 'Favorite';

  @override
  List<Object> get props => [index, title];
}

class AccountState extends BottomNavigationBarState {
  final int index = 3;
  final String title = 'Account';

  @override
  List<Object> get props => [index, title];
}
