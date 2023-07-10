import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber/delievery.dart';
import 'package:uber/pickup.dart';

class UbDelievery extends StatefulWidget {
  const UbDelievery({super.key});

  @override
  State<UbDelievery> createState() => _UbDelieveryState();
}

class _UbDelieveryState extends State<UbDelievery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              // Container(child: Image(image: AssetImage('assets/images/uber8.png'))),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Text('Hungry you are in the right place')),
              Stack(
                children: [
                  Image(image: AssetImage('assets/images/uber8.png')),
                  Column(
                    children: [
                      SizedBox(
                        height: 110,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Hungry? You're in the right place",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'UberBold',
                                  fontSize: 35),
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UbDelieveryfood()));
                          },
                          child: Container(
                            height: 60,
                            width: 390,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                FaIcon(FontAwesomeIcons.mapMarkerAlt),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Enter delievery address',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'UberReg'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pickup()));
                          },
                          child: Container(
                            height: 60,
                            width: 390,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                FaIcon(FontAwesomeIcons.solidClock),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Deliever now',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'UberMed'),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 380,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Find Food',
                            style: TextStyle(fontFamily: 'UberMed'),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
