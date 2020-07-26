part of 'bottom_navigation_bar_bloc.dart';

abstract class BottomNavigationBarEvent extends Equatable {
  const BottomNavigationBarEvent();
}

class LoadHome extends BottomNavigationBarEvent{
  @override
  List<Object> get props => [];

}
class LoadForum extends BottomNavigationBarEvent{
  @override
  List<Object> get props => [];

}
class LoadFavorite extends BottomNavigationBarEvent{
  @override
  List<Object> get props => [];

}
class LoadAccount extends BottomNavigationBarEvent{
  @override
  List<Object> get props => [];

}
