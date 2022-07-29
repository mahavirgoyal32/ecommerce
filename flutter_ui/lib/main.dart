// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/common/widgets/bottom_bar.dart';
import 'package:flutter_ui/features/auths/screens/auth_screen.dart';
import 'package:flutter_ui/features/auths/services/auth_service.dart';
import 'package:flutter_ui/providers/user_provider.dart';
import 'package:flutter_ui/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

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
        home: Provider.of<UserProvider>(context).user.token!.isNotEmpty
            ? const BottomBar()
            : const AuthScreen());
  }
}
