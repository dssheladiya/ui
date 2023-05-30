import 'package:flutter/material.dart';

class amazon extends StatefulWidget {
  const amazon({Key? key}) : super(key: key);

  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {
  List myproduct = [
    {
      "id": 1,
      "off": "29 % off",
      "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "price": 109.95,
      "description":
          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "category": "men's clothing",
      "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 3.9, "count": 120}
    },
    {
      "id": 2,
      "title": "Mens Casual Premium Slim Fit T-Shirts ",
      "price": 22.3,
      "description":
          "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
      "category": "men's clothing",
      "image":
          "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.1, "count": 259}
    },
    {
      "id": 3,
      "title": "Mens Cotton Jacket",
      "price": 55.99,
      "description":
          "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
      "category": "men's clothing",
      "image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.7, "count": 500}
    },
    {
      "id": 4,
      "title": "Mens Casual Slim Fit",
      "price": 15.99,
      "description":
          "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
      "category": "men's clothing",
      "image": "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 2.1, "count": 430}
    },
    {
      "id": 5,
      "title":
          "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
      "price": 695,
      "description":
          "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
      "category": "jewelery",
      "image":
          "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.6, "count": 400}
    },
    {
      "id": 6,
      "title": "Solid Gold Petite Micropave ",
      "price": 168,
      "description":
          "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.",
      "category": "jewelery",
      "image":
          "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 3.9, "count": 70}
    },
    {
      "id": 7,
      "title": "White Gold Plated Princess",
      "price": 9.99,
      "description":
          "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...",
      "category": "jewelery",
      "image":
          "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 3, "count": 400}
    },
    {
      "id": 8,
      "title": "Pierced Owl Rose Gold Plated Stainless Steel Double",
      "price": 10.99,
      "description":
          "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel",
      "category": "jewelery",
      "image":
          "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 1.9, "count": 100}
    },
    {
      "id": 9,
      "title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
      "price": 64,
      "description":
          "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 3.3, "count": 203}
    },
    {
      "id": 10,
      "title": "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
      "price": 109,
      "description":
          "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 2.9, "count": 470}
    },
    {
      "id": 11,
      "title":
          "Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5",
      "price": 109,
      "description":
          "3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.8, "count": 319}
    },
    {
      "id": 12,
      "title":
          "WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive",
      "price": 114,
      "description":
          "Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer's limited warranty",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.8, "count": 400}
    },
    {
      "id": 13,
      "title":
          "Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin",
      "price": 599,
      "description":
          "21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz",
      "category": "electronics",
      "image": "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 2.9, "count": 250}
    },
    {
      "id": 19,
      "title": "Opna Women's Short Sleeve Moisture",
      "price": 7.95,
      "description":
          "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort",
      "category": "women's clothing",
      "image": "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 4.5, "count": 146}
    },
    {
      "id": 20,
      "title": "DANVOUY Womens T Shirt Casual Cotton Short",
      "price": 12.99,
      "description":
          "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.",
      "category": "women's clothing",
      "image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg",
      "colors": [Colors.yellow, Colors.red, Colors.orangeAccent],
      "rating": {"rate": 3.6, "count": 145}
    }
  ];
  //List colo = [Colors.grey.shade300, Colors.black, Colors.teal];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 2 / 5,
                  mainAxisSpacing: 10,
                ),
                itemCount: myproduct.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 510,
                        width: 190,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Container(
                              height: 250,
                              width: 190,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      NetworkImage(myproduct[index]["image"]),
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(8)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 190,
                                    left: 20,
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 2, color: Colors.black12),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Icon(Icons.center_focus_strong,
                                          size: 30),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 8),
                                  child: Row(
                                    children: List.generate(
                                      3,
                                      (index) => Center(
                                        child: InkResponse(
                                          onTap: () {
                                            setState(() {
                                              selected == index;
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 30,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 2,
                                                    color: selected == index
                                                        ? Colors.black
                                                        : Colors.transparent)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(),
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: myproduct[index]
                                                        ["colors"][index]),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      decoration: TextDecoration.underline),
                                ),
                                Text(
                                  myproduct[index]["id"].toString(),
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                myproduct[index]["title"].toString(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Text(
                                    myproduct[index]["rating"]["rate"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(Icons.star, color: Colors.red, size: 20),
                                  Icon(Icons.star, color: Colors.red, size: 20),
                                  Icon(Icons.star, color: Colors.red, size: 20),
                                  Icon(Icons.star_half,
                                      color: Colors.red, size: 20),
                                  Icon(Icons.star_border_purple500_outlined,
                                      color: Colors.red, size: 20),
                                  SizedBox(width: 3),
                                  Text(
                                    myproduct[index]["rating"]["count"]
                                        .toString(),
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  SizedBox(width: 15),
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    myproduct[index]["price"].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    myproduct[index]["price"].toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black54,
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "25% off",
                              style: TextStyle(color: Colors.black54),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "FREE Delivery by Amazon",
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
