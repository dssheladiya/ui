import 'package:flutter/material.dart';

class Explore2 extends StatefulWidget {
  const Explore2({Key? key}) : super(key: key);

  @override
  State<Explore2> createState() => _Explore2State();
}

class _Explore2State extends State<Explore2> {
  int selected = 0;
  List color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text(
                "Popular recipes",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: color[index],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/images/2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Acai bowl",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Green peppers Apple",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Green peppers A-pple",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "\$ 12.25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black38,
                                      fontSize: 20),
                                ),
                                SizedBox(width: 60),
                                Container(
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.black38, width: 2)),
                                  child: Center(
                                    child: Text(
                                      "buy",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black38),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
