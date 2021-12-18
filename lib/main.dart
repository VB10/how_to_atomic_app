import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/features/login/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // theme: ThemeData.dark(),
      home: const LoginView(),
      theme: ThemeData.light().copyWith(
          dividerTheme: DividerThemeData(color: Colors.black, thickness: 2),
          elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.red))),
    );
  }
}
