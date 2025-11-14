import 'package:flutter/material.dart';
import 'package:notes_app/screens/HomeScreen.dart';
import 'package:notes_app/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        'login':(context)=> LoginScreen(),
        'home': (context)=>HomeScreen()
      },
      initialRoute: 'login',
    );
  }
}


