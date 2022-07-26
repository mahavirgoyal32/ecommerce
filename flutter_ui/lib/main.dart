// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/features/auths/screens/auth_screen.dart';
import 'package:flutter_ui/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon clone',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              elevation: 0, iconTheme: IconThemeData(color: Colors.black)),
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: const AuthScreen());
  }
}
