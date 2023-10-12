import 'package:flutter/material.dart';
import 'package:ui_challenge/items_details_page.dart';
import 'package:ui_challenge/onboarding.dart';
import 'package:ui_challenge/search_results_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: ItemDetails());
  }
}
