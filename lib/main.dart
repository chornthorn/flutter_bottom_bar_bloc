import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_bar_bloc/blocs/simple_bloc_observer.dart';
import 'package:flutter_bottom_bar_bloc/pages/main_screen.dart';
import 'blocs/bottom_app_bar/bottom_navigation_bar_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider<BottomNavigationBarBloc>(
        create: (context) => BottomNavigationBarBloc(),
        child: MainScreen(),
      ),
    );
  }
}


