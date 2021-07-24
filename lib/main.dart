import 'package:flutter/material.dart';
import 'package:flutter_app/model/counter_model.dart';
import 'package:flutter_app/screens/my_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => ChangeNotifierProvider(
            create: (context) => CounterModel(),
            child: MyHomePage()),
      },
      // home: MyHomePage(title: 'Flutter Provider Demo'),
    );
  }
}
