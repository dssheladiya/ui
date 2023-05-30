import 'package:flutter/material.dart';
import 'package:ui/Soup2Widget.dart';
import 'package:ui/soup3Widget.dart';
import 'ExploreBottam.dart';
import 'Explore1Widget.dart';
import 'Explore2Widget.dart';
import 'Explore3Widget.dart';
import 'Soup1Widget.dart';
import 'abc.dart';
import 'Amazon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soup2(),
    );
  }
}
