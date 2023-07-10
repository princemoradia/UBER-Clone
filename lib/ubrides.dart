import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:uber/googlemap.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/showbookedrides.dart';
import 'package:uber/uberIntercity.dart';
// import 'package:uber/googlemap.dart';

class UbRides extends StatefulWidget {
  const UbRides({super.key});

  @override
  State<UbRides> createState() => _UbRidesState();
}

class _UbRidesState extends State<UbRides> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromRGBO(229, 229, 229, 100),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyAppG()));
                      },
                      child: Row(children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.search,
                          size: 35,
                        ),
                        Text(
                          'Enter pick-up point',
                          style: TextStyle(
                              fontFamily: 'UberBold', color: Colors.black),
                        ),
                        VerticalDivider(
                          color: Color.fromRGBO(229, 229, 229, 100),
                          thickness: 2,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  FaIcon(FontAwesomeIcons.clock),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Now',
                                    style: TextStyle(
                                        fontFamily: 'UberBold',
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  FaIcon(FontAwesomeIcons.chevronDown),
                                  SizedBox(
                                    width: 5,
                                  )
                                ]),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 375,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(16, 70, 46, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 10, bottom: 5),
                            child: StrokeText(
                              text: "Move with safety",
                              textStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontFamily: 'Uberbold'),
                              strokeColor: Colors.black,
                              strokeWidth: 3,
                            ),
                            // Text('Want better',style: TextStyle(color: Colors.white,fontFamily: 'UberMed',fontSize: 25),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: StrokeText(
                              text: "pick-ups?                ",
                              textStyle: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontFamily: 'Uberbold'),
                              strokeColor: Colors.black,
                              strokeWidth: 3,
                            ),
                            // Text('pick-ups?',style: TextStyle(color: Colors.white,fontFamily: 'UberMed',fontSize: 25),),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: StrokeText(
                                  text: "Share location ",
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontFamily: 'UberMed'),
                                  strokeColor: Colors.black,
                                  strokeWidth: 3,
                                ),
                                // Text('Share location',style: TextStyle(color: Colors.white,fontFamily: 'UberMed'),),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image(
                                        image: AssetImage(
                                      'assets/images/homelogo2.jpg',
                                    ))),
                              ],
                            ),
                          )),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Suggestions',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 25),
                      ),
                      SizedBox(
                        width: 136,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(fontFamily: 'UberReg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyRides(
                                        userUID: ap.userModel.uid,
                                      )));
                        },
                        child: Container(
                          width: 184.5,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 229, 229, 100),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, bottom: 8),
                                    child: Text(
                                      'Ride',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'UberMed',
                                          fontSize: 20),
                                    ),
                                  )),
                              SizedBox(
                                width: 40,
                              ),
                              Image(image: AssetImage('assets/images/car.png')),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UberIntercity()));
                        },
                        child: Container(
                          width: 184.5,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(229, 229, 229, 100),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 8),
                                    child: Text(
                                      'Intercity',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'UberMed',
                                          fontSize: 20),
                                    ),
                                  )),
                              SizedBox(
                                width: 1.5,
                              ),
                              Image(
                                  image:
                                      AssetImage('assets/images/carboy.png')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 375,
                              height: 135,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(197,70,1, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15, left: 10, bottom: 5),
                                      child: StrokeText(
                                        text: "Trips on your",
                                        textStyle: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontFamily: 'Uberbold'),
                                        // strokeColor: Colors.black,
                                        // strokeWidth: 3,
                                      ), 
                                    ),
                                    StrokeText(
                                        text: "doorstep",
                                        textStyle: TextStyle(
                                            fontSize: 17,
                                            color: Colors.white,
                                            fontFamily: 'Uberbold'),
                                        // strokeColor: Colors.black,
                                        // strokeWidth: 3,
                                      ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: StrokeText(
                                            text: "Try Uber Auto",
                                            textStyle: TextStyle(
                                                fontSize: 17,
                                                color: Colors.white,
                                                fontFamily: 'UberMed'),
                                            // strokeColor: Colors.black,
                                            // strokeWidth: 3,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 77,
                                ),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(8)),
                                                child: Image.asset(
                                                    'assets/images/uber15.png')),
                                          ),
                                        ],
                                      ),
                                    )),
                              ]),
                            ),
                        ),
                         Container(
                            width: 375,
                            height: 135,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(253,242,220, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 10, bottom: 5),
                                    child: StrokeText(
                                      text: "Travel out of town",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.black,
                                          fontFamily: 'Uberbold'),
                                      // strokeColor: Colors.black,
                                      // strokeWidth: 3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: StrokeText(
                                          text: "Try intercity",
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontFamily: 'UberMed'),
                                          // strokeColor: Colors.black,
                                          // strokeWidth: 3,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 62,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Image.asset(
                                                  'assets/images/uber12.png')),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]),
                          ),
                      
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:         
                                          Container(
                            width: 375,
                            height: 135,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 38, 97 , 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 10, bottom: 5),
                                    child: StrokeText(
                                      text: "Skip the traffic -",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  ),
                                   StrokeText(
                                      text: "go Moto",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: StrokeText(
                                          text: "Try Uber Moto",
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontFamily: 'UberMed'),
                                          strokeColor: Colors.black,
                                          strokeWidth: 3,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Image.asset(
                                                  'assets/images/uber14.png')),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]),
                          ),
                        ),
                        Container(
                            width: 375,
                            height: 135,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(150, 100, 1, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 10, bottom: 5),
                                    child: StrokeText(
                                      text: "Comfortable    ",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  ),
                                  StrokeText(
                                      text: "Premier rides",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: StrokeText(
                                          text: "Book Premier",
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontFamily: 'UberMed'),
                                          strokeColor: Colors.black,
                                          strokeWidth: 3,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 80,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Image.asset(
                                                  'assets/images/uber13.png')),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 375,
                            height: 135,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(39, 110, 241, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 10, bottom: 5),
                                    child: StrokeText(
                                      text: "Learn how driver",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  ),
                                  StrokeText(
                                    text: " screening works",
                                    textStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontFamily: 'Uberbold'),
                                    strokeColor: Colors.black,
                                    strokeWidth: 3,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: StrokeText(
                                          text: "Learn More",
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontFamily: 'UberMed'),
                                          strokeColor: Colors.black,
                                          strokeWidth: 3,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ), 
                                ],
                              ),
                              SizedBox(
                                width: 79,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Image.asset(
                                                  'assets/images/circular.png')),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]),
                          ),
                        ),
                         Container(
                            width: 375,
                            height: 135,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(1, 8, 109, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 10, bottom: 5),
                                    child: StrokeText(
                                      text: "Get out and about",
                                      textStyle: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontFamily: 'Uberbold'),
                                      strokeColor: Colors.black,
                                      strokeWidth: 3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: StrokeText(
                                          text: "Ride with Uber",
                                          textStyle: TextStyle(
                                              fontSize: 17,
                                              color: Colors.white,
                                              fontFamily: 'UberMed'),
                                          strokeColor: Colors.black,
                                          strokeWidth: 3,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 57,
                              ),
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Image.asset(
                                                  'assets/images/fireworks.png')),
                                        ),
                                      ],
                                    ),
                                  )),
                            ]),
                          ),
                        
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Ways to plan with Uber",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "UberBold",
                              fontSize: 24),
                        ),
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 242,
                                  height: 137,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:
                                      Image.asset("assets/images/uber10.png"),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rentals',
                                    style: TextStyle(
                                        fontFamily: "UberMed",
                                        color: Colors.black,
                                        fontSize: 15),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 150,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Travel for 1 to 12 hours                    ",
                                style: TextStyle(fontFamily: 'UberReg'),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 250,
                                height: 137,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset("assets/images/uber9.png"),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Travel Intercity',
                                  style: TextStyle(
                                      fontFamily: "UberMed",
                                      color: Colors.black,
                                      fontSize: 15),
                                ),
                                Icon(Icons.arrow_forward),
                                SizedBox(
                                  width: 100,
                                )
                              ],
                            ),
                            // SizedBox(height: 20,),
                            Text(
                              "Get to remote locations with       ",
                              style: TextStyle(fontFamily: 'UberReg'),
                            ),
                            Text(
                              "ease                                                       ",
                              style: TextStyle(fontFamily: 'UberReg'),
                            ),
                          ],
                        )
                      ],
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
