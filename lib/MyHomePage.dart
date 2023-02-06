import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui' as ui;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
         body: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.only(left: 20,right: 10,bottom: 40),
             child: Column(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     //Icon(Icons.menu,color: Colors.blue.shade900,),
                     SvgPicture.asset('assets/menu.svg',width: 20,height: 20,color: Colors.blue.shade900,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Badge(
                             child: Icon(Icons.notifications_none,color: Colors.blue.shade900,),
                           badgeContent: Text('2',style: TextStyle(fontSize: 7),),
                           badgeStyle: BadgeStyle(),
                           position: BadgePosition.topEnd(top: -3,end: -1),

                         ),
                         SizedBox(width: 10,),
                         CircleAvatar(
                           radius: 20
                           , backgroundImage: NetworkImage('https://th.bing.com/th/id/R.5a480652b93233346d5940345fab9790?rik=hJ1CAPU2uLA2SA&riu=http%3a%2f%2f1.bp.blogspot.com%2f-FnFtfwmfNAM%2fVZgSzOagCgI%2fAAAAAAAAA5c%2fsmfXuf2jioY%2fs1600%2fCute-Baby-Girl-Wallpapers-36.jpg&ehk=nlT4%2fi8YzoUypQnexHXKL6DxwSKyY9sg2id%2b0lBYud8%3d&risl=&pid=ImgRaw&r=0'),
                         ),
                       ],

                     ),

                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: Column(
                   children: [
                     Row(children: [
                       Text('Welcome Back',style: TextStyle(fontSize: 16,color: Colors.grey),)
                     ],),
                     SizedBox(height: 10,),
                     Row(children: [
                       Text('Creative Mints',style: TextStyle(fontSize: 20,color: Colors.blue.shade900,),)
                     ],),
                   ],
                 ),
               ),
               SizedBox(height: 20,),
               Container(
                 width: MediaQuery.of(context).size.width * 0.70,
                 height: MediaQuery.of(context).size.height * 0.06,
                 decoration: BoxDecoration(
                   color: Colors.grey.shade200,
                   borderRadius:
                   BorderRadius.all(
                   Radius.circular(10,),
                 ),),
                 child: TextField(decoration: InputDecoration(
                     hintText: 'Search',
                     prefixIcon: Icon(Icons.search,color: Colors.black,),
                   border: InputBorder.none
                 ),),
               ),
               SizedBox(height: 20,),
               Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         height: 180,
                         width: 180,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(colors: [Color(0xFF81FBB8),Color(0xFF28C76F)]),
                          borderRadius: BorderRadius.circular(20)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 30),
                           child: Row(
                             children: [
                               Column(
                                   //mainAxisAlignment: MainAxisAlignment.start,

                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                    // Padding(padding: EdgeInsets.only(left:20,right: 10,top: 20)),
                                     Container(
                                       width: 70,
                                       height: 70,
                                       decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                         color: Colors.white
                                       ),
                                       child: Icon(Icons.monetization_on,color: Color(0xFF66ff99),size: 50,),
                                     ),
                                     SizedBox(height: 30,),
                                     Text('Transactions',style: TextStyle(color: Colors.white),),
                                     SizedBox(height: 5,),
                                     Text('7 Items',style: TextStyle(color: Colors.white,fontSize: 10)),
                                     SizedBox(width: 10,),


                                   ],

                                 ),
                               SizedBox(width: 10,),
                               Stack(
                                 children: [
                                   Container(
                                     //color:Colors.red,
                                     child: CustomPaint(
                                       size: Size(69, 120),
                                       painter: myPaint(),

                                     ),
                                   )
                                 ],
                               )
                             ],
                           ),

                         ),

                       ),
                       SizedBox(width: 10,),
                       Container(
                         height: 180,
                         width: 180,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(colors: [Color(0xFFFC6076),Color(0xFFFF9A44)]),
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 30),
                           child: Column(
                             //mainAxisAlignment: MainAxisAlignment.start,

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               // Padding(padding: EdgeInsets.only(left:20,right: 10,top: 20)),
                               Container(
                                 width: 70,
                                 height: 70,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white
                                 ),
                                 child: Icon(Icons.savings,color: Color(0xFFFC6076),size: 50,),
                               ),
                               SizedBox(height: 30,),
                               Text('Budget',style: TextStyle(color: Colors.white),),
                               SizedBox(height: 5,),
                               Text('4 Items',style: TextStyle(color: Colors.white,fontSize: 10))

                             ],

                           ),

                         ),

                       )
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Container(
                         height: 180,
                         width: 180,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(colors: [Color(0xFFFFE259),Color(0xFFFFA751)]),
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 30),
                           child: Column(
                             //mainAxisAlignment: MainAxisAlignment.start,

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               // Padding(padding: EdgeInsets.only(left:20,right: 10,top: 20)),
                               Container(
                                 width: 70,
                                 height: 70,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white
                                 ),
                                 child: Icon(Icons.stars,color: Color(0xFFFFE259),size: 50,),
                               ),
                               SizedBox(height: 30,),
                               Text('Recomendations',style: TextStyle(color: Colors.white),),
                               SizedBox(height: 5,),
                               Text('6 Items',style: TextStyle(color: Colors.white,fontSize: 10))

                             ],

                           ),

                         ),

                       ),
                       SizedBox(width: 10,),
                       Container(
                         height: 180,
                         width: 180,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(colors: [Color(0xFF1E3C72),Color(0xFF2A5298)]),
                             borderRadius: BorderRadius.circular(20)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 30),
                           child: Column(
                             //mainAxisAlignment: MainAxisAlignment.start,

                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               // Padding(padding: EdgeInsets.only(left:20,right: 10,top: 20)),
                               Container(
                                 width: 70,
                                 height: 70,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.white
                                 ),
                                 child: Icon(Icons.credit_card,color: Color(0xFF1E3C72),size: 50,),
                               ),
                               SizedBox(height: 30,),
                               Text('Credit Cards',style: TextStyle(color: Colors.white),),
                               SizedBox(height: 5,),
                               Text('3 Cards',style: TextStyle(color: Colors.white,fontSize: 10))

                             ],

                           ),

                         ),

                       )
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text('Choose a categorie',style: TextStyle(color: Colors.blue.shade900),),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Row(
                     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: 50,
                         width: 150,
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey.shade400),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10,right: 10),
                           child: Row(
                             children: [
                               Container(
                                 width: 30,
                                 height: 30,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Colors.cyan
                                 ),
                                 child: Icon(Icons.account_balance,color: Colors.white,size: 20,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10),
                                 child: Text('Branch\nSrevices',style: TextStyle(color: Colors.blue.shade900,fontSize: 12),),
                               )
                             ],
                           ),
                         ),
                       ),
                       SizedBox(width: 50,),
                       Container(
                         height: 50,
                         width: 150,
                         decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey.shade400),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 10,right: 10),
                           child: Row(
                             children: [
                               Container(
                                 width: 30,
                                 height: 30,
                                 decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     color: Color(0xFF1E3C72)
                                 ),
                                 child: Icon(Icons.payment,color: Colors.white,size: 20,),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 10),
                                 child: Text('Make a\nPayment',style: TextStyle(color: Colors.blue.shade900,fontSize: 12),),
                               )
                             ],
                           ),
                         ),
                       ),
                     ],
                   )
                 ],
               )
             ],),
           ),
         ),


    ));
  }
}
class myPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint();
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    Path ovalPath = Path();
    // Start paint from 20% height to the left
    //ovalPath.moveTo(0, height * 0.2);
    ovalPath.moveTo(width, height * 0.2);

    // paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        width * 0.49, height * 0.25, width * 0.51, height * 0.5);

    // Paint a curve from current position to bottom left of screen at width * 0.1
    ovalPath.quadraticBezierTo(width * 0.45, height * 0.8, width , height-10);

    // draw remaining line to bottom left side
    ovalPath.lineTo(width, height-10);

    // Close line to reset it back
    ovalPath.close();

    //paint.color = Colors.blue.shade600;
    //paint.color=Color(0xFF81FBB8).withOpacity(0.5).;
    paint.color=Colors.white10.withOpacity(0.2);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return oldDelegate != this;
  }
  
}
