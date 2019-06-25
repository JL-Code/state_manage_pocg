import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'counter_model.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // First, create a `ScopedModel` widget. This will provide
    // the `model` to the children that request it.
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text("scoped_model"),
          ),
          body: new Column(children: [
            // Create a ScopedModelDescendant. This widget will get the
            // CounterModel from the nearest ScopedModel<CounterModel>.
            // It will hand that model to our builder method, and rebuild
            // any time the CounterModel changes (i.e. after we
            // `notifyListeners` in the Model).
            // 创建一个ScopedModelDescendant。这个小部件将获得
            // 来自最近的ScopedModel <CounterModel>的CounterModel。
            // 它会将该模型交给我们的构建器方法，然后重建
            // CounterModel随时改变（即在我们之后）
            // 模型中的`notifyListeners`。
            new ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) => new Text('${model.counter}'),
            ),
            new Text("不依赖CounterModel的Widget"),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("increment");
              CounterModel.of(context).increment();
            },
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
