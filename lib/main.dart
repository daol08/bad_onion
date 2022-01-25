import 'package:flutter/material.dart';
import 'package:pollin/src/home.dart';
import 'package:pollin/src/providers/count_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (BuildContext context) => CountProvider(),
          child: Home(),
        ));
  }
}
