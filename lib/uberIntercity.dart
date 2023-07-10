import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uber/googlemap.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/showbookedrides.dart';


class UberIntercity extends StatefulWidget {
  const UberIntercity({super.key});

  @override
  State<UberIntercity> createState() => _UberIntercityState();
}

class _UberIntercityState extends State<UberIntercity> {
  late final String userUID;
  @override
  Widget build(BuildContext context) {
       final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(color: Color.fromRGBO(173, 222, 201, 1)),
          ),
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(173, 222, 201, 1)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 40,
                          ),
                          radius: 30,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyRides(userUID: ap.userModel.uid)));
                        },
                        child: Container(
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'My Activity',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: "UberMed"),
                              )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 150,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(173, 222, 201, 1)),
                height: 260,
                width: 540,
                child: Image.asset("assets/images/uber11.png"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Uber                 ",
              style: TextStyle(
                  color: Colors.black, fontFamily: "UberBold", fontSize: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Intercity           ",
              style: TextStyle(
                  color: Colors.black, fontFamily: "UberBold", fontSize: 60),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                // Icon(Icons.),
                FaIcon(FontAwesomeIcons.road),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "For outstation travel",
                  style: TextStyle(fontFamily: "UberMed", fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                // Icon(Icons.),
                FaIcon(FontAwesomeIcons.cab),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Convinient and affordable trips",
                  style: TextStyle(fontFamily: "UberMed", fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                // Icon(Icons.),
                FaIcon(FontAwesomeIcons.solidMessage),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Priority chat support post trip",
                  style: TextStyle(fontFamily: "UberMed", fontSize: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            width: 390,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyAppG()));
              },
              child: Text(
                'Get Started',
                style: TextStyle(fontFamily: "UberMed", fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ],
      ),
    );
  }
}
