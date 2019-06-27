import 'package:flutter/material.dart';
import 'package:shopping_cart/app_icons.dart';

/// 主页
class HomeScreen extends StatelessWidget {
  /// 主页底部导航
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: const Icon(AppIcons.home), title: Text("精选")),
    BottomNavigationBarItem(
        icon: const Icon(AppIcons.cart), title: Text("购物车")),
    BottomNavigationBarItem(
        icon: const Icon(AppIcons.my), title: Text("我")),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("商品信息"),
        ),
        body: Center(
          child: Icon(AppIcons.home),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
        ),
      ),
    );
  }
}
