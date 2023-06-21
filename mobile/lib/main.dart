import 'package:flutter/material.dart';
import 'package:mobile/features/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokee Single Serving APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarTextStyle: TextStyle(color: Colors.black87)
        ),
      primarySwatch: Colors.blue
       
      ),
      home:const HomeScreen(),
    );
  }
}

