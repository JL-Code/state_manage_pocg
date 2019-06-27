import 'package:flutter/material.dart';

/// 主页
class HomeScreen extends StatelessWidget {
  /// 主页底部导航
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: const Icon(Icons.home), title: Text("精选")),
    BottomNavigationBarItem(icon: const Icon(Icons.home), title: Text("购物车")),
    BottomNavigationBarItem(icon: const Icon(Icons.home), title: Text("我")),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("商品信息"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
        ),
      ),
    );
  }
}
