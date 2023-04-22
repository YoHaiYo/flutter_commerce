import 'package:flutter/material.dart';
import 'package:flutter_commerce/screen/cart/cart_screen.dart';
import 'package:flutter_commerce/screen/category/category_screen.dart';
import 'package:flutter_commerce/screen/home/home_screen.dart';
import 'package:flutter_commerce/screen/main/widgets/main_widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

MainWidgets mainWidgets = MainWidgets();
int _currentIndex = 0;
HomeScreen homeScreen = const HomeScreen();
CategoryScreen categoryScreen = const CategoryScreen();
CartScreen cartScreen = const CartScreen();

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
            "YoHa ",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 22,
            ),
          ),
            Text(
              "Commerce App",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          homeScreen,
          categoryScreen,
          cartScreen,
        ],
      ),
      bottomNavigationBar: mainWidgets.navigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
