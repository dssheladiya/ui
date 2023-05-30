import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class soup1 extends StatefulWidget {
  const soup1({Key? key}) : super(key: key);

  @override
  State<soup1> createState() => _soup1State();
}

class _soup1State extends State<soup1> {
  List ima = [
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/drink.png",
    "assets/images/7.png"
  ];
  List tex = ["Soup", "Vege", "Chicken", "Drink", "Food"];
  List color = [
    Color(0xfffef2da),
    Color(0xffffe4e9),
    Color(0xfffef2da),
    Color(0xffffe4e9),
  ];
  List colo = [
    Color(0xfffef2da),
    Color(0xffffe4e9),
    Color(0xfffef2da),
    Color(0xffffe4e9),
  ];
  int selected = 0;
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: Colors.orange,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text("Home"),
            selectedColor: Colors.orange,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text("cart"),
            selectedColor: Colors.orange,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Icon(Icons.notification_add_outlined),
            title: Text("noti"),
            selectedColor: Colors.orange,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
            selectedColor: Colors.orange,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Hi,Mina!",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 30),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                      image: DecorationImage(
                          image: AssetImage("assets/images/id.png")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Sesrch foods...",
                    hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    icon: Icon(Icons.search, size: 30),
                    suffixIcon: Icon(Icons.mic, color: Colors.orange, size: 30),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              //physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  5,
                  (index) => Center(
                    child: InkResponse(
                      onTap: () {
                        setState(() {});
                        selected = index;
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: selected == index
                                  ? Colors.white
                                  : Colors.black12,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: selected == index
                                        ? Colors.orange.shade100
                                        : Colors.transparent,
                                    offset: Offset(0, 10),
                                    blurRadius: 10),
                              ],
                            ),
                            child: Image.asset(ima[index],
                                scale: 4,
                                color: selected == index
                                    ? Colors.orange
                                    : Colors.black38),
                          ),
                          SizedBox(height: 20),
                          Text(
                            tex[index],
                            style: TextStyle(
                                fontSize: 18,
                                color: selected == index
                                    ? Colors.black
                                    : Colors.black38,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Center(
                    child: Container(
                      width: 200,
                      height: 400,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: (color[index]),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: colo[index],
                              offset: Offset(0, 15),
                              blurRadius: 10)
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/8.png",
                            height: 250,
                          ),
                          Text(
                            "Veggie stuffed shells",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "\$12",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100, top: 15),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 23,
                              child: Like(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Like extends StatefulWidget {
  const Like({Key? key}) : super(key: key);

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {});
        like = !like;
      },
      icon: like == true
          ? Icon(
              Icons.favorite,
              size: 23,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border,
              size: 23,
              color: Colors.orange,
            ),
    );
  }
}
