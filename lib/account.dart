import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:uber/AccHelp.dart';
import 'package:uber/AccWallet.dart';
import 'package:uber/UbMessage.dart';
import 'package:uber/UbSettings.dart';
import 'package:uber/UberHub.dart';
import 'package:uber/uberlegal.dart';
import 'package:uber/uberprofiletab.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/auth_provider.dart';

class UbAccount extends StatefulWidget {
  const UbAccount({super.key});

  @override
  State<UbAccount> createState() => _UbAccountState();
}

class _UbAccountState extends State<UbAccount> {
  // var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Column(children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UberAccProf()));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(ap.userModel.profilePic),
                      radius: 50,
                    ),
                  ),
                  Text(
                    ap.userModel.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'UberBold',
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(children: [
                      SizedBox(
                        width: 150,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(229, 229, 229, 100),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.star),
                              Text('5.0   '),
                            ],
                          )),
                    ]),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccHelpPg()));
                      },
                      child: Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(229, 229, 229, 100),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Icon(Icons.help),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Help',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'UberMed'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccWallet()));
                      },
                      child: Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(229, 229, 229, 100),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Icon(Icons.wallet),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Wallet',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: 'UberMed'),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.5,
                    ),
                    Container(
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(229, 229, 229, 100),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          // Image.asset('assets/images/food.png'),
                          SizedBox(
                            height: 20,
                          ),
                          FaIcon(FontAwesomeIcons.solidClock),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Food',
                            style: TextStyle(
                                color: Colors.black, fontFamily: 'UberMed'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 10,
            color: Color.fromRGBO(229, 229, 229, 100),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.gift),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Send a gift',
                    style: TextStyle(fontFamily: 'UberMed'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UbSettings()));
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(fontFamily: 'UberMed'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UbMessage()));
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.message_sharp),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Messages',
                      style: TextStyle(fontFamily: 'UberMed'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UbBusiness()));
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.business_center),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Business hub',
                      style: TextStyle(fontFamily: 'UberMed'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.label_sharp),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Uber Eats promotions',
                    style: TextStyle(fontFamily: 'UberMed'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                children: [
                  FaIcon(FontAwesomeIcons.solidHeart),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Uber Eats favourites',
                    style: TextStyle(fontFamily: 'UberMed'),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UbLegal()));
              },
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Legal',
                      style: TextStyle(fontFamily: 'UberMed'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'v4.475.10000                                                              '),
        ],
      ),
    );
  }
}
