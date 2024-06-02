import 'package:flutter/material.dart';
import 'package:shoppingdro/second.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 190,),
        child: Column(children: [
          Center(
            child: Image.asset("assets/last.png"),),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: TextButton(onPressed: () {
              Navigator
                  .of(context)
                  .pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) => Screen2()), (route) => false);
              },
              child: Container(width: 364,
                height: 70, decoration: ShapeDecoration(
                  color: Color(0xFFFB8500),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text('Thank you for your purchase',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF4FAFF),
                      fontSize: 22,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),),
                ),
              ),
            ),
          ),
        ],),
      ),

    );
  }
}
