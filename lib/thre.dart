import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingdro/four.dart';
import 'package:shoppingdro/second.dart';

class Screen3 extends StatefulWidget {
  final String image;
  final String text;
  final String price;

  const Screen3({super.key, required this.image, required this.text,required this.price});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
              children: [ CarouselSlider.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int itemIndex,
                    int pageViewIndex) =>
                    Container(
                      width: 500,
                      height: 40,
                      color: Colors.white,
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 3,
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
                TextButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => Screen2()));
                },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Icon(Icons.arrow_back, color: Colors.black,),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 350, top: 40),
                  child: Icon(Icons.bookmark_outline, color: Colors.black,),
                )
              ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              widget.text,
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Colors',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, top: 20),
            child: Row(
              children: [
                Container(
                    width: 113.90,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: Color(0xFF774488),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF774488)),
                          borderRadius: BorderRadius.circular(10),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                      width: 113.90,
                      height: 40,
                      decoration: ShapeDecoration(
                          color: Color(0xFFC9A19C),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(
                                0xFFC9A19C)),
                            borderRadius: BorderRadius.circular(10),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                      width: 113.90,
                      height: 40,
                      decoration: ShapeDecoration(
                          color: Color(0xFFA1C89B),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(
                                0xFFA1C89B)),
                            borderRadius: BorderRadius.circular(10),
                          ))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Text(
              'Get Apple TV+ free for a year',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'iPad Air. With a stunning 10.9-inch Liquid Retina display \nand True Tone for a more comfortable viewing experience.\n1 Powered by the new A14 Bionic chip with Neural Engine \nfor 4K video editing, music creation, and next-level games - \nall with ease. Featuring fast, easy, and secure Touch ID, \nadvanced cameras, USB-C, and support for versatile  \n accessories, including Magic Keyboard and Apple\n Pencil (2nd generation)6.',
              style: TextStyle(
                color: Color(0xFF212529),
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                height: 2,
                letterSpacing: 0.24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Row(
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 270,
                ),
                Text(
                  '\$599',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: 0.72,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: TextButton(onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Screen4(lastimage:widget.image, lasttext:widget.text, lastprice:widget.price,)));
            },
              child: Container(
                width: 364,
                height: 70,
                decoration: ShapeDecoration(
                    color: Color(0xFFFB8500),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))
                ),
                child: Center(
                  child: Text('Add to cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF4FAFF),
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),),
                ),

              ),
            ),
          )
        ]));
  }
}
