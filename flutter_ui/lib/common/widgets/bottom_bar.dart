import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/constants/global_variables.dart';
import 'package:flutter_ui/features/account/screens/account_screen.dart';
import 'package:flutter_ui/features/cart/screens/cart_screen.dart';
import 'package:flutter_ui/features/home/screens/homescreen.dart';
import 'package:flutter_ui/providers/user_provider.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = 'actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarwidth = 42;
  double bottomBarBorderwidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
    const CartScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final usercartlen = context.watch<UserProvider>().user.cart.length;
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarwidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 0
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth))),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          // account
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarwidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 1
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth))),
              child: const Icon(
                Icons.person_outlined,
              ),
            ),
            label: '',
          ),
          // cart
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarwidth,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _page == 2
                              ? GlobalVariables.selectedNavBarColor
                              : GlobalVariables.backgroundColor,
                          width: bottomBarBorderwidth))),
              child: Badge(
                elevation: 0,
                badgeContent: Text(usercartlen.toString()),
                badgeColor: Colors.white,
                child: const Icon(Icons.shopping_cart_outlined),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
