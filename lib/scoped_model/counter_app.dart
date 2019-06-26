import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter_model.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // First, create a `ScopedModel` widget. This will provide
    // the `model` to the children that request it.
    // 首先创建 ScopedModel 部件。为它的子部件提供模型。
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text("scoped_model"),
          ),
          body: Center(
            child: Column(children: [
              // 创建一个ScopedModelDescendant。这个小部件将获得
              // 来自最近的ScopedModel <CounterModel>的CounterModel。
              // 它会将该模型交给我们的构建器方法，然后重建
              // CounterModel随时改变（即在我们之后）
              // 模型中的`notifyListeners`。
              new ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) =>
                    new Text('${model.counter}'),
              ),
              new ScopedModelDescendant<CounterModel>(
                builder: (context, child, model) =>
                    new Text('${model.counter}'),
              ),
              new ScopedModelDescendant<UserModel>(
                builder: (context, child, model) =>
                    new Text('${model.userInfo?.userName}'),
              ),
              new Text("不依赖CounterModel的Widget"),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("increment");
              CounterModel.of(context).increment();
              UserModel.of(context)
                  .updateUser(User(userName: "jiangy", avatar: ""));
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
