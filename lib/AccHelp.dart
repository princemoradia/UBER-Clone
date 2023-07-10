import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccHelpPg extends StatefulWidget {
  const AccHelpPg({super.key});

  @override
  State<AccHelpPg> createState() => _AccHelpPgState();
}

class _AccHelpPgState extends State<AccHelpPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              Container(
                height: 90,
                width: double.infinity,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Text(
                      'Help                                   ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'UberMed',
                          fontSize: 35),
                    )
                  ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'All topics                                                                                                     ',
                  style: TextStyle(fontFamily: 'UberReg', fontSize: 19),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Help with a trip',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 200,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 270,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Membership and loyalty',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 100,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'A guide to Uber',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 190,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Uber Shuttle',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 225,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Accessibility',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 227,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'About cancellation policy',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 87,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        'Report a map issue',
                        style: TextStyle(fontFamily: 'UberMed', fontSize: 19),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 1.0),
                        child: SizedBox(
                          width: 155,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
