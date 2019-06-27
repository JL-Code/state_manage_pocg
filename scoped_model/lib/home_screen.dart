import 'package:flutter/material.dart';
import './scoped_model.dart';
import 'package:state_manage_poc/scoped_model/counter_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/counter");
                  },
                  child: Text("scoped_model example ${model.counter}"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
