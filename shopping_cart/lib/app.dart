import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shopping_cart/app_routes.dart';
import 'package:shopping_cart/screens/home_screen.dart';
import 'package:shopping_cart/shopping_cart_model.dart';

import 'constants.dart';

class ScopedModelApp extends StatelessWidget {
  const ScopedModelApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var app = MaterialApp(
      title: Constants.title,
      routes: {
        AppRoutes.home: (_) => new HomeScreen(),
        // '/webview': (_) => new WebviewScaffold(
        //       url: 'https://www.baidu.com',
        //       appBar: new AppBar(
        //         title: new Text('百度'),
        //       ),
        //       withZoom: true,
        //       withLocalStorage: true,
        //     ),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
    return ScopedModel<ShoppingCartModel>(
      model: ShoppingCartModel(),
      child: app,
    );
  }
}
