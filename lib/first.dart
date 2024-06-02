import 'package:flutter/material.dart';
import 'package:shoppingdro/second.dart';

class Screen1 extends StatefulWidget {

  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));
    }
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(width: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 300,left:
            100),
            child: Image.asset("assets/a.png"),
          ))
    );
  }
}
