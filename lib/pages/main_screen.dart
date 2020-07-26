import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_bar_bloc/blocs/bottom_app_bar/bloc.dart';
import 'index.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final screens = <Widget>[
    HomeScreen(),
    ForumScreen(),
    FavoritePage(),
    AccountPage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ProxyAnimation transitionAnimation =
  ProxyAnimation(kAlwaysDismissedAnimation);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
      builder: (context, state) {
        if (state is HomeState) {
          return buildHomepage(currentIndex: state.index);
        }
        if (state is ForumState) {
          return buildHomepage(currentIndex: state.index);
        }
        if (state is FavoriteState) {
          return buildHomepage(currentIndex: state.index);
        }
        if (state is AccountState) {
          return buildHomepage(currentIndex: state.index);
        }
        return Container(
          color: Colors.red,
        );
      },
    );
  }

  Scaffold buildHomepage({int currentIndex}) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: PageStorage(
              bucket: bucket,
              child: screens[currentIndex],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey[500],
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        onTap: (index) {
          if (index == 0) {
            return BlocProvider.of<BottomNavigationBarBloc>(context)
              ..add(LoadHome());
          }
          if (index == 1) {
            return BlocProvider.of<BottomNavigationBarBloc>(context)
              ..add(LoadForum());
          }
          if (index == 2) {
            return BlocProvider.of<BottomNavigationBarBloc>(context)
              ..add(LoadFavorite());
          }
          if (index == 3) {
            return BlocProvider.of<BottomNavigationBarBloc>(context)
              ..add(LoadAccount());
          }

          return BlocProvider.of<BottomNavigationBarBloc>(context)
            ..add(LoadHome());
        },
        items: [
          _buildTabBarItem(icon: Icon(Icons.home), label: 'Home'),
          _buildTabBarItem(icon: Icon(Icons.chat), label: 'Forum'),
          _buildTabBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          _buildTabBarItem(icon: Icon(Icons.account_circle), label: 'Account')
        ],
      ),
    );
  }

  _buildTabBarItem({final Widget icon, final String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      title: Text(
        label,
        style: TextStyle(fontSize: 14.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
