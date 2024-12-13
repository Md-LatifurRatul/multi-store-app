import 'package:ecom_multi_store/views/buyers/nav_screens/account_screen.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/cart_screen.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/category_screen.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/home_screen.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/search_screen.dart';
import 'package:ecom_multi_store/views/buyers/nav_screens/store_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const StoreScreen(),
    const CartScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          _pageIndex = value;
          setState(() {});
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          _bottomNavHome(),
          _bottomNavCategories(),
          _bottomNavStore(),
          _bottomNavCart(),
          _bottomNavSearch(),
          _bottomNavAccount(),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }

  BottomNavigationBarItem _bottomNavAccount() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/account.svg',
        width: 20,
      ),
      label: 'ACCOUNT',
    );
  }

  BottomNavigationBarItem _bottomNavSearch() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/search.svg',
        width: 20,
      ),
      label: 'SEARCH',
    );
  }

  BottomNavigationBarItem _bottomNavCart() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/cart.svg',
        width: 20,
      ),
      label: 'CART',
    );
  }

  BottomNavigationBarItem _bottomNavStore() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/shop.svg',
        width: 20,
      ),
      label: 'STORE',
    );
  }

  BottomNavigationBarItem _bottomNavCategories() {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/icons/explore.svg',
        width: 20,
      ),
      label: 'CATEGORIES',
    );
  }

  BottomNavigationBarItem _bottomNavHome() {
    return const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'HOME',
    );
  }
}
