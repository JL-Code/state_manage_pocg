import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:state_manage_poc/home_screen.dart';
import 'package:state_manage_poc/scoped_model/counter_app.dart';
import 'package:state_manage_poc/scoped_model/counter_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //创建顶层状态
  final CounterModel counterModel = CounterModel();
  final UserModel userModel = UserModel();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: userModel,
      child: ScopedModel<CounterModel>(
        model: counterModel,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            "/": (_) {
              return HomeScreen();
            },
            "/counter": (_) {
              return CounterApp();
            },
          },
        ),
      ),
    );
  }
}
