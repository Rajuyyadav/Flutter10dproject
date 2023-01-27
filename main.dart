import 'package:flutter/material.dart';

import 'package:project10d/test/constants/cart_provider_1.dart';
import 'package:project10d/test/screens/cart_screen_1.dart';
import 'package:project10d/test/screens/first_screen_class.dart';

import 'package:provider/provider.dart';

import 'listincrement_in listviewbuilder/prac1.dart';
import 'test0/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) =>
          // CartProvider(),
          CartProvider_1(), //=======================_1
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',

          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),

          home: const FirstScreenClass(),
          //   Prac1(), // this is my main file
          // CartScreen(),
          // ProductScreen(),
          // LoginPageOne(),
          // ProScreen(), //================_1
        );
      }),
    );
  }
}
