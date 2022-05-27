import 'package:flutter/material.dart';

import 'package:setting/setting/setting.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.0,
          centerTitle: true,
        ),
        primaryColor: Colors.green,
      ),
      home: Setting(),
    );
  }
}

