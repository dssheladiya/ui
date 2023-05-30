import 'dart:developer';

import 'package:flutter/material.dart';

import 'Soup2Widget.dart';

class soup3 extends StatefulWidget {
  const soup3({Key? key}) : super(key: key);

  @override
  State<soup3> createState() => _soup3State();
}

class _soup3State extends State<soup3> {
  List menu = ["Vegetable", "Soup", "Drinks", "Vegetable", "Drinks"];
  List mrp = ["\$12", "\$10", "\$12", "\$20", "\$12"];
  List color = [
    Color(0xfffef2da),
    Color(0xffffe4e9),
    Color(0xfffef2da),
    Color(0xffffe4e9),
    Color(0xfffef2da),
  ];
  List col = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeed4),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 740,
              width: 415,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50))),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              log('object');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => soup2()),
                              );
                            },
                            icon: Icon(Icons.arrow_back_ios_new, size: 30)),
                        Spacer(),
                        Icon(Icons.more_vert_outlined, size: 30),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Shopping Cart",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 22),
                        ),
                        Spacer(),
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "\$34",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 200,
                          margin: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          color: col[index],
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 140,
                                width: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: (color[index]),
                                ),
                                child: Image.asset(
                                  "assets/images/8.png",
                                ),
                              ),
                              SizedBox(width: 15),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          menu[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 22),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          mrp[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black38,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 70),
                                child: Row(
                                  children: [
                                    Add(),
                                    Icon(
                                      Icons.delete_outlined,
                                      color: Colors.black38,
                                      size: 28,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black38, width: 2)),
                    child: Center(
                      child: Text(
                        "APPLY COUPON",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 270),
                            Text("Total"),
                            SizedBox(width: 10),
                            Text(
                              "\$34",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 277),
                            Text("Tax"),
                            SizedBox(width: 10),
                            Text(
                              "\$00",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  int denishh = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkResponse(
          onTap: () {
            setState(() {
              denishh++;
            });
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, 0.2),
                      blurRadius: 10)
                ]),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text("$denishh"),
        SizedBox(width: 10),
        InkResponse(
          onTap: () {
            setState(() {
              if (denishh > 0) {
                denishh--;
              }
            });
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, 0.2),
                      blurRadius: 10)
                ]),
            child: Icon(
              Icons.remove,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
