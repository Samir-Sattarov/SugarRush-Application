import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/cart.dart';
import 'package:flutter_application_1/presentation/screens/favorite.dart';
import 'package:flutter_application_1/presentation/screens/home_screen.dart';
import 'package:flutter_application_1/presentation/utils/images.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const MainScreen());

  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> tabs = const [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
  ];
  int _currentIndex = 0;

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(StaticImages.iIconButtomNavigationBarPerson),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(StaticImages.iFavorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(StaticImages.iShoppingCart),
            label: '',
          ),
        ],
        onTap: _updateIndex,
      ),
    );
  }
}
