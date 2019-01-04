import 'package:flutter/material.dart';
import '../view/index.dart' as View;
import '../widget/index.dart' as Widgets;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HotElki',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Widgets.Initial(),
        // initialRoute: '/Initial',
        routes: {
          '/Authorization': (BuildContext context) => Widgets.Authorization(),
          '/Main': (BuildContext context) => Widgets.Main(),
          '/UserCreation': (BuildContext context) => Widgets.UserCreation(),
          '/Initial': (BuildContext context) => Widgets.Initial(),
        });
  }
}
