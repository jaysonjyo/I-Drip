import 'package:flutter/material.dart';
import 'package:shoppingdro/six.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  int im=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right:30),
            child: Text('checkout ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
                  ),
          ),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Row(
            children: [
              Text( 'Shipping information',
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
              ),
              SizedBox(width: 170,),
              Text( 'change',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFFF6AE2D),
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                width: 364,
                height: 166,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color:Colors.black12,
                      blurRadius: 40,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                    )
                  ],
                ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.white,radius:20 ,
                              child: Icon(Icons.person,size: 20,),),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  'jane alderson',
                                  style: TextStyle(
                                    color: Color(0xFF212529),
                                    fontSize: 17,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.white,radius: 20,
                                    child: Icon(Icons.location_on_outlined,size: 20,),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text( '221B Baker Street \nLondon , UK',
                                  style: TextStyle(
                                  color: Color(0xFF212529),
                                              fontSize: 15,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                CircleAvatar(backgroundColor: Colors.white,radius: 20,
                                child: Icon(Icons.call_outlined,size: 20,),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text( '+123456789',
                                    style: TextStyle(
                                      color: Color(0xFF212529),
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ),
            ],
          ),
        ),
    Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
      width: 364,
      height: 265,
      decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      ),
      shadows: [
      BoxShadow(
      color: Colors.black12,
      blurRadius: 40,
      offset: Offset(0, 10),
      spreadRadius: 0,
      )
      ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text(
              'Payment Method',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          RadioListTile<int>(
            title: Row(
              children: [
                SizedBox(width: 60,height: 60,
                    child: Image.asset("assets/bb.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '**** **** **** 1234',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            value: 1,
            groupValue: im,
            onChanged: (int? value) {
              setState(() {
im=value!;
              });
            },
          ),
          RadioListTile<int>(
            title: Row(
              children: [
                SizedBox(width: 60,height: 60,
                    child: Image.asset("assets/cc.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('**** **** **** 1234',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),),

                )
              ],
            ),
            value: 2,
            groupValue: im,
            onChanged: (int? value) {
              setState(() {
                im=value!;
              });
            },
          ),
          RadioListTile<int>(
            title:Row(
              children: [
                SizedBox(width: 60,height: 60,
                    child: Image.asset("assets/dd.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('**** **** **** 1234',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),),
                ),
              ],
            ),
            value: 3,
            groupValue: im,
            onChanged: (int? value) {
              setState(() {
                im=value!;
              });
            },
          ),

        ],
      ),

      ),
    ),
        Padding(
          padding: const EdgeInsets.only(top: 30,left: 10),
          child: Row(
            children: [
              Text(
                'Total',
                style: TextStyle(
                  color: Color(0xFF212529),
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Text(
                  '\$1898',
                  style: TextStyle(
                    color: Color(0xFF212529),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w800,
                    height: 0,
                    letterSpacing: 0.72,
                  ),
                ),
              )

            ],
          ),
        ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen6()));},
            child: Container(
            width: 364,
            height: 70,
            decoration: ShapeDecoration(
            color: Color(0xFFFB8500),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            ),
            ),
                   child: Center(
             child: Text(
                  'Confirm & Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF4FAFF),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                   ),
            
            ),
          ),
        ),
      ],
    ),
      ],
      ),
    );
  }
}
