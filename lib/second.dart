import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppingdro/thre.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> image = [
    "assets/iphone.jpg",
    "assets/iphone2.jpg",
    "assets/iphone3.webp"
  ];
  List<String> first = [
    "assets/d.png",
    "assets/e.png",
    "assets/f.png",
    "assets/g.png"
  ];
  List<String> firsttext = [
    'apple iMac 24”\n (2021)',
    'Apple Watch SE \n(2021)',
    'MacBook Pro\n16-inch(2021) ',
    'iphone 13 mini (2021)'
  ];
  List<dynamic> firstprice = ['\$1299', '\$279', '\$2499', '\$729'];
  List<dynamic> firstrating = ['4.9', '4.9', '4.9', '4.1'];

  List<String> second = [
    "assets/h.png",
    "assets/i.png",
    "assets/j.png",
    "assets/k.png"
  ];
  List<String> secondtext = [
    'iPad mini \n8.3-inch (2021)',
    'Apple Watch \nSe ries 3',
    'apple iMac 27',
    'mac mini\n(2021)'
  ];
  List<dynamic> secondprice = ['\$499', '\$199', '\$1500', '\$699'];
  List<String> three = [
    "assets/l.png",
    "assets/m.png",
    "assets/n.png",
    "assets/o.png"
  ];
  List<String> threetext = ["i" 'Phone', "i" 'Pad', 'mac', 'macbooks'];

  List<String> four = [
    "assets/p.png",
    "assets/q.png",
    "assets/r.png",
    "assets/s.png"
  ];
  List<String> fourtext = [
    'iPhone SE \n(2020)',
    'iPhone 12\n mini(2020)',
    'iPhone 13\n(2021)',
    'iphone 13 \n mini(2021)'
  ];
  List<dynamic> fourprice = ['\$399', '\$729', '\$829', '\$729'];
  List<dynamic> fourrating = ['4.6', '4.5', '4.1', '4.1'];

  List<String> five = [
    "assets/t.png",
    "assets/u.png",
    "assets/v.png",
    "assets/w.png"
  ];
  List<String> fivetext = [
    'iPad Air 10.9 \ninch  (2021)',
    'iPad 10.2-inch \n(2021)',
    'iPad mini 8.3\n-inch  (2021)',
    'iPad Pro 12.9\n-inch (2021)'
  ];
  List<dynamic> fiveprice = ['\$599', '\$329', '\$499', '\$1099'];
  List<dynamic> fiverating = ['4.9', '4.1', '4.9', '4.9'];

  List<String> six = [
    "assets/x.png",
    "assets/y.png",
    "assets/z.png",
    "assets/aa.png"
  ];
  List<String> sixtext = [
    'Pro Display \nXDR 32-inch',
    'apple iMac \n24” (2021)',
    'apple iMac \n27”',
    'Mac Pro\n(2020)'
  ];
  List<dynamic> sixprice = ['\$4999', '\$1299', '\$1500', '\$5999'];
  List<dynamic> sixrating = ['4.9', '4.9', '4.9', '4.9'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "iDrip",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF02040F),
              fontSize: 28,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              height: 0,
              letterSpacing: 3.60,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search_rounded),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "assets/b.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          CarouselSlider.builder(
            itemCount: image.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                        child: Image.asset(
              image[itemIndex],
              fit: BoxFit.cover,
            )),
            options: CarouselOptions(
              height: 300,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Hot Deals',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                SizedBox(
                  width: 240,
                ),
                Text(
                  'SEE ALL',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFFA6A6AA),
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.underline,
                    height: 0.08,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: first.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => Screen3(
                                  image: first[index],
                                  text: firsttext[index],
                                  price: firstprice[index],
                                )));
                      },
                      child: Container(
                        width: 150,
                        height: 250,
                        decoration: ShapeDecoration(
                            color: Color(0xFFF4FAFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)))),
                        child: Column(
                          children: [
                            Image.asset(
                              first[index],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  SizedBox(width: 40,height: 40,
                                    child: Text(
                                      firsttext[index],
                                      style: TextStyle(
                                          color: Color(0xFF212529),
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 1),maxLines: 1,
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left:70,bottom: 20),
                                      child: index == 0
                                          ? Icon(
                                              Icons.bookmark,
                                              color: Colors.orange,
                                            )
                                          : Icon(Icons.bookmark_outline))
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 1, right: 100),
                              child: Text(
                                firstprice[index],
                                style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w700,
                                  height: 0.08,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 2, top: 5),
                                  child: RatingBar.builder(
                                    itemSize: 20,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 1,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 1, top: 5),
                                  child: Text(
                                    firstrating[index],
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0.11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  "Most Poplular",
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                      height: 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: second.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 150,
                      height: 250,
                      decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                      child: Column(
                        children: [
                          Image.asset(
                            second[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  secondtext[index],
                                  style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.bookmark_outline,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 100),
                            child: Text(
                              secondprice[index],
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 5),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1, top: 5),
                                child: Text(
                                  firstrating[index],
                                  style: TextStyle(
                                    color: Color(0xFF212529),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0.11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'CATEGORIES',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 225),
                  child: Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                      height: 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: three.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 100,
                      height: 250,
                      decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              three[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              threetext[index],
                              style: TextStyle(
                                  color: Color(0xFF212529),
                                  fontSize: 16,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w800,
                                  height: 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'iPhones',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                      height: 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: four.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 150,
                      height: 250,
                      decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                      child: Column(
                        children: [
                          Image.asset(
                            four[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  fourtext[index],
                                  style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: index == 1
                                        ? Icon(
                                            Icons.bookmark,
                                            color: Colors.orange,
                                          )
                                        : Icon(Icons.bookmark_outline))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9, right: 100),
                            child: Text(
                              fourprice[index],
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 5),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1, top: 5),
                                child: Text(
                                  fourrating[index],
                                  style: TextStyle(
                                    color: Color(0xFF212529),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0.11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'iPads',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                      height: 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: five.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 150,
                      height: 250,
                      decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                      child: Column(
                        children: [
                          Image.asset(
                            five[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  fivetext[index],
                                  style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Icon(
                                    Icons.bookmark_outline,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9, right: 100),
                            child: Text(
                              fiveprice[index],
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 5),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1, top: 5),
                                child: Text(
                                  fiverating[index],
                                  style: TextStyle(
                                    color: Color(0xFF212529),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0.11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                Text(
                  'macs',
                  style: TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontSize: 18,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    height: 0.06,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280),
                  child: Text(
                    'SEE ALL',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFA6A6AA),
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                      height: 0.08,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: six.length,
                itemBuilder: (context, index) {
                  return Stack(children: [
                    Container(
                      width: 150,
                      height: 250,
                      decoration: ShapeDecoration(
                          color: Color(0xFFF4FAFF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                      child: Column(
                        children: [
                          Image.asset(
                            six[index],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  sixtext[index],
                                  style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 1),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: index == 0
                                        ? Icon(
                                            Icons.bookmark,
                                            color: Colors.orange,
                                          )
                                        : Icon(Icons.bookmark_outline)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 9, right: 100),
                            child: Text(
                              sixprice[index],
                              style: TextStyle(
                                color: Color(0xFF212529),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0.08,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 2, top: 5),
                                child: RatingBar.builder(
                                  itemSize: 20,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 1,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 1, top: 5),
                                child: Text(
                                  sixrating[index],
                                  style: TextStyle(
                                    color: Color(0xFF212529),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0.11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
