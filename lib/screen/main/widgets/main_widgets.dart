import 'package:flutter/material.dart';

class MainWidgets {
  BottomNavigationBar navigationBar({
    required int currentIndex,
    required Function(int value) onTap,

}) {
    return BottomNavigationBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "홈",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.category_outlined),
        label: "카테고리",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: "장바구니",
      ),
    ],
      currentIndex: currentIndex,
      onTap: (value) {
      onTap(value);
      },
    );
  }
}
