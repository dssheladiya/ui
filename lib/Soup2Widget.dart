import 'package:flutter/material.dart';
import 'package:ui/Soup1Widget.dart';
import 'package:ui/soup3Widget.dart';

class soup2 extends StatefulWidget {
  const soup2({Key? key}) : super(key: key);

  @override
  State<soup2> createState() => _soup2State();
}

class _soup2State extends State<soup2> {
  int selec = 0;
  int selected = 0;
  List color = [
    Color(0xfffef2da),
    Color(0xffffe4e9),
    Color(0xfffef2da),
    Color(0xffffe4e9),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeed4),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 750,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          selected = value;
                        });
                      },
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 400,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Color(0xffffeed4),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(50)),
                              image: DecorationImage(
                                  image: AssetImage("assets/images/8.png"))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => soup1()),
                                    );
                                  },
                                  icon: Icon(Icons.arrow_back_ios_new,
                                      color: Colors.orange, size: 30),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: Like(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 360,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) => Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: selected == index
                                  ? Colors.orange
                                  : Colors.white,
                              radius: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 440, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Veggie Stuffed Shells",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 25)),
                        SizedBox(height: 30),
                        Text(
                          "Create a lighter, healthier version of stuffe",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "shells, the standard whole milk ricotta",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "cheese filling is replaced with frozen leaf",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "spinach and lowfat cottage cheese or ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "partskim ricitta, which cuts down the ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "fat without sacificing creaminess.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "\$12",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => soup3(),
                          ),
                        );
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
//Row(
//                             children: [
//                               IconButton(
//                                 onPressed: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => soup1()),
//                                   );
//                                 },
//                                 icon: Icon(Icons.arrow_back_ios_new,
//                                     color: Colors.orange, size: 30),
//                               ),
//                               Spacer(),
//                               CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 radius: 20,
//                                 child: Like(),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 20),
//                           Image.asset("assets/images/8.png"),
