import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/// 计数器模型
class CounterModel extends Model {
  /// 私有变量
  int _counter = 0;

  /// 公共属性
  int get counter => _counter;

  /// 自增函数
  void increment() {
    debugPrint("CounterModel increment");
    _counter++;

    // Then notify all the listeners.
    notifyListeners();
  }

  /// Wraps [ScopedModel.of] for this [Model].
  static CounterModel of(BuildContext context) =>
      ScopedModel.of<CounterModel>(context, rebuildOnChange: true);
}
