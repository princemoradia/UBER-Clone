import 'package:flutter/material.dart';
import 'package:uber/ubDelievery.dart';
import 'package:uber/ubrides.dart';

class UbSc4 extends StatefulWidget {
  const UbSc4({super.key});
  @override
  State<UbSc4> createState() => _UbSc4State();
}

class _UbSc4State extends State<UbSc4> {
  // var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50,),
            // SizedBox(
            //   height: 50,
            // ),
            // InkWell(
            //   onTap: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => UbAccount()));
            //   },
            //   child: Row(
            //     children: [
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Icon(Icons.arrow_back),
            //       SizedBox(
            //         width: 30,
            //       ),
            //       Text(
            //         'Uber Account',
            //         style: TextStyle(fontSize: 15),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            TabBar(indicatorColor: Colors.black, tabs: [
              Tab(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('assets/images/car.png')),
                      ),
                      SizedBox(width: 10,),
                      Text('Ride',style: TextStyle(color: Colors.black,fontFamily: 'UberBold',fontSize: 21),)
                    ],
                  ),
              ),
              Tab(
                child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image(image: AssetImage('assets/images/bowl.png')),
                      ),
                      Text('Delievery',style: TextStyle(color: Colors.black,fontFamily: 'UberBold',fontSize: 21),)
                    ],
                  ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                UbRides(),
                UbDelievery(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}


// EXTRACODE
      // body: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: Column(
            

      //         children: [
      //           SizedBox(
      //             height: 40,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Container(
      //                 child: Row(children: [
      //                   Container(
      //                       height: 45,
      //                       width: 45,
      //                       child: Image(
      //                           image: AssetImage('assets/images/car.png'))),
      //                   SizedBox(
      //                     width: 5,
      //                   ),
      //                   Text(
      //                     'Rides',
      //                     style:
      //                         TextStyle(fontFamily: 'UberBold', fontSize: 30),
      //                   ),
      //                 ]),
      //               ),
      //               Container(
      //                 child: Row(children: [
                       
      //                   Container(
      //                       height: 45,
      //                       width: 45,
      //                       child: Image(
      //                           image: AssetImage('assets/images/bowl.png'))),
      //                   Text(
      //                     'Delievery',
      //                     style:
      //                         TextStyle(fontFamily: 'UberBold', fontSize: 30),
      //                   ),
      //                 ]),
      //               )
      //             ],
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           Container(
      //             width: 400,
      //             height: 55,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(50),
      //               color: Color.fromRGBO(229, 229, 229, 100),
      //             ),
      //             child: InkWell(
      //               onTap: () {},
      //               child: Row(children: [
      //                 SizedBox(
      //                   width: 20,
      //                 ),
      //                 Icon(
      //                   Icons.search,
      //                   size: 35,
      //                 ),
      //                 Text(
      //                   'Enter pick-up point',
      //                   style: TextStyle(
      //                       fontFamily: 'UberBold', color: Colors.black),
      //                 ),
      //                 VerticalDivider(
      //                   color: Color.fromRGBO(229, 229, 229, 100),
      //                   thickness: 2,
      //                 ),
      //                 SizedBox(
      //                   width: 15,
      //                 ),
      //                 InkWell(
      //                   onTap: () {},
      //                   child: Row(
      //                     crossAxisAlignment: CrossAxisAlignment.center,
      //                     children: [
      //                       Container(
      //                         height: 40,
      //                         decoration: BoxDecoration(
      //                           color: Colors.white,
      //                           borderRadius: BorderRadius.circular(50),
      //                         ),
      //                         child: Row(children: [
      //                           SizedBox(
      //                             width: 5,
      //                           ),
      //                           FaIcon(FontAwesomeIcons.clock),
      //                           SizedBox(
      //                             width: 15,
      //                           ),
      //                           Text(
      //                             'Now',
      //                             style: TextStyle(
      //                                 fontFamily: 'UberBold',
      //                                 color: Colors.black),
      //                           ),
      //                           SizedBox(
      //                             width: 15,
      //                           ),
      //                           FaIcon(FontAwesomeIcons.chevronDown),
      //                           SizedBox(
      //                             width: 5,
      //                           )
      //                         ]),
      //                       )
      //                     ],
      //                   ),
      //                 )
      //               ]),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           Container(
      //             width: 375,
      //             height: 160,
      //             decoration: BoxDecoration(
      //               color: Color.fromRGBO(16, 70, 46, 1),
      //               borderRadius: BorderRadius.circular(8),
      //             ),
      //             child: Row(children: [
      //               Column(
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.only(
      //                         top: 15, left: 10, bottom: 5),
      //                     child: StrokeText(
      //                       text: "Move with safety",
      //                       textStyle: TextStyle(
      //                           fontSize: 17,
      //                           color: Colors.white,
      //                           fontFamily: 'Uberbold'),
      //                       strokeColor: Colors.black,
      //                       strokeWidth: 3,
      //                     ),
      //                     // Text('Want better',style: TextStyle(color: Colors.white,fontFamily: 'UberMed',fontSize: 25),),
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.only(left: 10.0),
      //                     child: StrokeText(
      //                       text: "pick-ups?                ",
      //                       textStyle: TextStyle(
      //                           fontSize: 17,
      //                           color: Colors.white,
      //                           fontFamily: 'Uberbold'),
      //                       strokeColor: Colors.black,
      //                       strokeWidth: 3,
      //                     ),
      //                     // Text('pick-ups?',style: TextStyle(color: Colors.white,fontFamily: 'UberMed',fontSize: 25),),
      //                   ),
      //                   SizedBox(
      //                     height: 40,
      //                   ),
      //                   Row(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.all(8.0),
      //                         child: StrokeText(
      //                           text: "Share location ",
      //                           textStyle: TextStyle(
      //                               fontSize: 17,
      //                               color: Colors.white,
      //                               fontFamily: 'UberMed'),
      //                           strokeColor: Colors.black,
      //                           strokeWidth: 3,
      //                         ),
      //                         // Text('Share location',style: TextStyle(color: Colors.white,fontFamily: 'UberMed'),),
      //                       ),
      //                       Icon(
      //                         Icons.arrow_forward,
      //                         color: Colors.white,
      //                       ),
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 width: 70,
      //               ),
      //               Align(
      //                   alignment: Alignment.bottomRight,
      //                   child: SingleChildScrollView(
      //                     child: Column(
      //                       children: [
      //                         SizedBox(
      //                           height: 10,
      //                         ),
      //                         ClipRRect(
      //                             borderRadius: BorderRadius.circular(8),
      //                             child: Image(
      //                                 image: AssetImage(
      //                               'assets/images/homelogo2.jpg',
      //                             ))),
      //                       ],
      //                     ),
      //                   )),
      //             ]),
      //           ),
      //           SizedBox(
      //             height: 15,
      //           ),
      //           Row(
      //             children: [
      //               Text(
      //                 'Suggestions',
      //                 style: TextStyle(
      //                     color: Colors.black,
      //                     fontFamily: 'UberBold',
      //                     fontSize: 25),
      //               ),
      //               SizedBox(
      //                 width: 136,
      //               ),
      //               Text(
      //                 'See All',
      //                 style: TextStyle(fontFamily: 'UberReg'),
      //               ),
      //             ],
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 width: 184.5,
      //                 height: 100,
      //                 decoration: BoxDecoration(
      //                     color: Color.fromRGBO(229, 229, 229, 100),
      //                     borderRadius: BorderRadius.circular(15)),
      //                 child: Row(
      //                   children: [
      //                     Container(),
      //                     Align(
      //                         alignment: Alignment.bottomLeft,
      //                         child: Padding(
      //                           padding: const EdgeInsets.only(
      //                               left: 10.0, bottom: 8),
      //                           child: Text(
      //                             'Ride',
      //                             style: TextStyle(
      //                                 color: Colors.black,
      //                                 fontFamily: 'UberMed',
      //                                 fontSize: 20),
      //                           ),
      //                         )),
      //                     SizedBox(
      //                       width: 40,
      //                     ),
      //                     Image(image: AssetImage('assets/images/car.png')),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 width: 10,
      //               ),
      //               Container(
      //                 width: 184.5,
      //                 height: 100,
      //                 decoration: BoxDecoration(
      //                     color: Color.fromRGBO(229, 229, 229, 100),
      //                     borderRadius: BorderRadius.circular(15)),
      //                 child: Row(
      //                   children: [
      //                     Align(
      //                         alignment: Alignment.bottomLeft,
      //                         child: Padding(
      //                           padding:
      //                               const EdgeInsets.only(left: 8.0, bottom: 8),
      //                           child: Text(
      //                             'Intercity',
      //                             style: TextStyle(
      //                                 color: Colors.black,
      //                                 fontFamily: 'UberMed',
      //                                 fontSize: 20),
      //                           ),
      //                         )),
      //                     SizedBox(
      //                       width: 1.5,
      //                     ),
      //                     Image(image: AssetImage('assets/images/carboy.png')),
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           SingleChildScrollView(
      //             scrollDirection: Axis.horizontal,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   width: 375,
      //                   height: 135,
      //                   decoration: BoxDecoration(
      //                     color: Color.fromRGBO(16, 70, 46, 1),
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                   child: Row(children: [
      //                     Column(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.only(
      //                               top: 15, left: 10, bottom: 5),
      //                           child: StrokeText(
      //                             text: "Skip the queue   ",
      //                             textStyle: TextStyle(
      //                                 fontSize: 17,
      //                                 color: Colors.white,
      //                                 fontFamily: 'Uberbold'),
      //                             strokeColor: Colors.black,
      //                             strokeWidth: 3,
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 30,
      //                         ),
      //                         Row(
      //                           children: [
      //                             Padding(
      //                               padding: const EdgeInsets.all(8.0),
      //                               child: StrokeText(
      //                                 text: "Order now ",
      //                                 textStyle: TextStyle(
      //                                     fontSize: 17,
      //                                     color: Colors.white,
      //                                     fontFamily: 'UberMed'),
      //                                 strokeColor: Colors.black,
      //                                 strokeWidth: 3,
      //                               ),
      //                             ),
      //                             Icon(
      //                               Icons.arrow_forward,
      //                               color: Colors.white,
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       width: 75,
      //                     ),
      //                     Align(
      //                         alignment: Alignment.bottomRight,
      //                         child: SingleChildScrollView(
      //                           child: Column(
      //                             children: [
      //                               ClipRRect(
      //                                 borderRadius: BorderRadius.circular(8),
      //                                 child: Container(
      //                                     decoration: BoxDecoration(
      //                                         borderRadius:
      //                                             BorderRadius.circular(8)),
      //                                     child: Image.asset(
      //                                         'assets/images/boy.png')),
      //                               ),
      //                             ],
      //                           ),
      //                         )),
      //                   ]),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.all(12.0),
      //                   child: Container(
      //                     width: 375,
      //                     height: 135,
      //                     decoration: BoxDecoration(
      //                       color: Color.fromRGBO(39, 110, 241, 1),
      //                       borderRadius: BorderRadius.circular(8),
      //                     ),
      //                     child: Row(children: [
      //                       Column(
      //                         children: [
      //                           Padding(
      //                             padding: const EdgeInsets.only(
      //                                 top: 15, left: 10, bottom: 5),
      //                             child: StrokeText(
      //                               text: "Learn how driver",
      //                               textStyle: TextStyle(
      //                                   fontSize: 17,
      //                                   color: Colors.white,
      //                                   fontFamily: 'Uberbold'),
      //                               strokeColor: Colors.black,
      //                               strokeWidth: 3,
      //                             ),
      //                           ),
      //                           StrokeText(
      //                             text: " screening works",
      //                             textStyle: TextStyle(
      //                                 fontSize: 17,
      //                                 color: Colors.white,
      //                                 fontFamily: 'Uberbold'),
      //                             strokeColor: Colors.black,
      //                             strokeWidth: 3,
      //                           ),
      //                           SizedBox(
      //                             height: 10,
      //                           ),
      //                           Row(
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.all(8.0),
      //                                 child: StrokeText(
      //                                   text: "Learn More",
      //                                   textStyle: TextStyle(
      //                                       fontSize: 17,
      //                                       color: Colors.white,
      //                                       fontFamily: 'UberMed'),
      //                                   strokeColor: Colors.black,
      //                                   strokeWidth: 3,
      //                                 ),
      //                               ),
      //                               Icon(
      //                                 Icons.arrow_forward,
      //                                 color: Colors.white,
      //                               ),
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                       SizedBox(
      //                         width: 79,
      //                       ),
      //                       Align(
      //                           alignment: Alignment.bottomRight,
      //                           child: SingleChildScrollView(
      //                             child: Column(
      //                               children: [
      //                                 ClipRRect(
      //                                   borderRadius: BorderRadius.circular(8),
      //                                   child: Container(
      //                                       decoration: BoxDecoration(
      //                                           borderRadius:
      //                                               BorderRadius.circular(8)),
      //                                       child: Image.asset(
      //                                           'assets/images/circular.png')),
      //                                 ),
      //                               ],
      //                             ),
      //                           )),
      //                     ]),
      //                   ),
      //                 ),
      //                 Container(
      //                   width: 375,
      //                   height: 135,
      //                   decoration: BoxDecoration(
      //                     color: Color.fromRGBO(1, 8, 109, 1),
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                   child: Row(children: [
      //                     Column(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.only(
      //                               top: 15, left: 10, bottom: 5),
      //                           child: StrokeText(
      //                             text: "Get out and about",
      //                             textStyle: TextStyle(
      //                                 fontSize: 17,
      //                                 color: Colors.white,
      //                                 fontFamily: 'Uberbold'),
      //                             strokeColor: Colors.black,
      //                             strokeWidth: 3,
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 30,
      //                         ),
      //                         Row(
      //                           children: [
      //                             Padding(
      //                               padding: const EdgeInsets.all(8.0),
      //                               child: StrokeText(
      //                                 text: "Ride with Uber",
      //                                 textStyle: TextStyle(
      //                                     fontSize: 17,
      //                                     color: Colors.white,
      //                                     fontFamily: 'UberMed'),
      //                                 strokeColor: Colors.black,
      //                                 strokeWidth: 3,
      //                               ),
      //                             ),
      //                             Icon(
      //                               Icons.arrow_forward,
      //                               color: Colors.white,
      //                             ),
      //                           ],
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       width: 57,
      //                     ),
      //                     Align(
      //                         alignment: Alignment.bottomRight,
      //                         child: SingleChildScrollView(
      //                           child: Column(
      //                             children: [
      //                               ClipRRect(
      //                                 borderRadius: BorderRadius.circular(8),
      //                                 child: Container(
      //                                     decoration: BoxDecoration(
      //                                         borderRadius:
      //                                             BorderRadius.circular(8)),
      //                                     child: Image.asset(
      //                                         'assets/images/fireworks.png')),
      //                               ),
      //                             ],
      //                           ),
      //                         )),
      //                   ]),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: 130,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
   
//     );
//   }
// }
