import 'package:flutter/material.dart';
import '../scoped_model.dart';

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

/// 用户信息模型
/// 首先继承自 scoped_model 的 Model 抽象基类
class UserModel extends Model {
  /// 用户信息
  User _userInfo;

  User get userInfo => _userInfo;

  /// 更新用户信息
  /// TODO: 在 Dart 语言中函数在没有明确返回类型时，默认为 `dynamic`
  void updateUser(User user) {
    _userInfo = user;
  }

  /// Wraps [ScopedModel.of] for this [Model].
  static UserModel of(BuildContext context) =>
      ScopedModel.of<UserModel>(context, rebuildOnChange: true);
}

class User {
  /// 构造函数
  User({this.userName, this.avatar});

  final String userName;
  final String avatar;
}
