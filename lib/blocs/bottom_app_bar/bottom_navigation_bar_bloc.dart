import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc() : super(HomeState());

  @override
  Stream<BottomNavigationBarState> mapEventToState(
    BottomNavigationBarEvent event,
  ) async* {
    if(event is LoadHome){
      yield HomeState();
    }
    if(event is LoadForum){
      yield ForumState();
    }
    if(event is LoadFavorite){
      yield FavoriteState();
    }
    if(event is LoadAccount){
      yield AccountState();
    }
  }
}
