import 'package:flutter/material.dart';

class Explore1 extends StatefulWidget {
  const Explore1({Key? key}) : super(key: key);

  @override
  State<Explore1> createState() => _Explore1State();
}

class _Explore1State extends State<Explore1> {
  List men = [
    "Acai bowi",
    "Feature salad",
    "Acai bowi",
    "Feature salad",
    "Acai bowi",
    "Feature salad"
  ];
  List abc = ["Mary", "anastasia", "Mary", "anastasia", "Mary", "anastasia"];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Food",
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    suffixIcon: Icon(Icons.search, size: 30),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Recommende",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "more",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 15,
                        childAspectRatio: 2 / 2.3,
                      ),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/4.jpg")),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text(
                                men[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                              Text(
                                abc[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                              // Container(
                              //   height: 20,
                              // )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Most View",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Text(
                            "more",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        height: 140,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/2.jpg",
                            fit: BoxFit.cover),
                      ),
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
