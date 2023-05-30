import 'package:flutter/material.dart';

class point extends StatefulWidget {
  const point({Key? key}) : super(key: key);

  @override
  State<point> createState() => _pointState();
}

class _pointState extends State<point> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.black38,
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
          ),
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
