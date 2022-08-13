import 'package:flutter/material.dart';
import 'package:momen_store/screens/launch_screen.dart';
import 'package:momen_store/screens/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen' : (context) => const LaunchScreen(),
        '/main_screen' : (context) => const MainScreen(),
      },
      );
  }
}


