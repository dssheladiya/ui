import 'package:flutter/material.dart';

import 'Explore2Widget.dart';
import 'Explore3Widget.dart';
import 'Explore1Widget.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List items = [Explore1(), Explore2(), Explore3()];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black12,
        onTap: (value) {
          setState(() {});
          selected = value;
        },
        currentIndex: selected,
        elevation: 3,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 30),
            label: "",
          ),
        ],
      ),
      body: items[selected],
    );
  }
}
