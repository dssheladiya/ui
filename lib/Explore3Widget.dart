import 'package:flutter/material.dart';

class Explore3 extends StatefulWidget {
  const Explore3({Key? key}) : super(key: key);

  @override
  State<Explore3> createState() => _Explore3State();
}

class _Explore3State extends State<Explore3> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: 415,
                  decoration: BoxDecoration(
                    color: Color(0xff69f0ae),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(100),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25),
                  child: Text(
                    "My home page",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 30),
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.black12,
                                child: Image.asset(
                                  "assets/images/id.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anastasia",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "ID 12345678905",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "56",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black12),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    "786",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Follower",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black12),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Tags",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Cookbooks",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 4.0,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 300,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Container(
                              height: 175,
                              width: 240,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/4.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              top: 180,
                              child: Container(
                                height: 120,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 180,
                              left: 98,
                              child: Container(
                                height: 120,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/2.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Salads cook",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "18 courses",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/images/4.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kitchen flowers",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "24 courses",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/images/4.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kitchen flowers",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "24 courses",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage("assets/images/4.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Salads cook",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text(
                          "18 courses",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
