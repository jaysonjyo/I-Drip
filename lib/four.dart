import 'package:flutter/material.dart';
import 'package:shoppingdro/five.dart';

class Screen4 extends StatefulWidget {
  final String lastimage;
  final String lasttext;
  final String lastprice;
  const Screen4(
      {super.key,required this.lastimage,required this.lasttext,required this.lastprice});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.white,
      automaticallyImplyLeading:false,
      title: Center(
        child: Text( "iDrip",
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
      actions: [ Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.search_rounded),
      ),],
      leading: (Icon(Icons.format_align_left_sharp,color: Colors.black,)),
    ),
body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container( width: 275,
        height: 39,  decoration: ShapeDecoration(
          color: Color(0xB2F6AE2D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text('Delivery for FREE until the end of the month',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 50,),
      child: Stack(
        children: [Container(
          width: 366,
          height: 130,
          decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),),
        child: Row(
          children: [
            Image.asset(widget.lastimage),
            Padding(
        padding: const EdgeInsets.only(top: 10,),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.lasttext,style: TextStyle(color: Colors.black,fontSize: 20),),

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  widget.lastprice,style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  children: [
                    Text(
                      'Quantity',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: 0.52,
                      ),
                    ),
                    Icon(Icons.indeterminate_check_box,color: Colors.orange,),
                    Text("1"),
                    Icon(Icons.add_box_rounded,color: Colors.orange,)
                  ],
                ),
              ),
            ],
          ),
        ),
            )
          ],
        ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 335,top: 5),
            child: Icon(Icons.close,color: Colors.black,),
          )
        ]
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 50,),
      child: Stack(
        children: [
          Container(
            width: 366,
            height: 130,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),),
            child: Row(
              children: [
                Image.asset(widget.lastimage),
                Padding(
                  padding: const EdgeInsets.only(top: 10,),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.lasttext,style: TextStyle(color: Colors.black,fontSize: 20),),
          
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            widget.lastprice,style: TextStyle(color: Colors.black,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Row(
                            children: [
                              Text(
                                'Quantity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: 0.52,
                                ),
                              ),
                              Icon(Icons.indeterminate_check_box,color: Colors.orange,),
                              Text("1"),
                              Icon(Icons.add_box_rounded,color: Colors.orange,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(left: 335,top: 5),
           child: Icon(Icons.close,color: Colors.black,),
         )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 40,left: 20),
      child: Row(
        children: [
          Text(
            'Total',
            style: TextStyle(
              color: Color(0xFF212529),
              fontSize: 36,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Text(
              '\$1898',
              style: TextStyle(
                color: Color(0xFF212529),
                fontSize: 36,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: 1.08,
              ),
            ),
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen5()));},
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
              'checkout',
              textAlign:TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF4FAFF),
                fontSize: 25,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),),
      ),
    ),
  ]
)
    );
  }
}
