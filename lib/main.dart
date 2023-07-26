import 'package:flutter/material.dart';
import 'package:online_shop/controller/main_screen_provider.dart';
import 'package:online_shop/view/main_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>MainScreenNotifier())
      ],

      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shoe Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

