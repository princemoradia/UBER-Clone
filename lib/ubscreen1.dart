import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/bottomnav.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/ubscreen2.dart';
import 'package:stroke_text/stroke_text.dart';

class Ubsc1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Color.fromRGBO(39, 110, 241, 1),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Color.fromRGBO(39, 110, 241, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Text(
                      'Uber',
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: 'UberMed'),
                    ),
                  ),
                  Image.asset('assets/images/homelogo.png'),
                  SizedBox(
                    height: 80,
                  ),
                  StrokeText(
                    text: "Move with safety",
                    textStyle: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'Uberbold'),
                    strokeColor: Colors.black,
                    strokeWidth: 3,
                  ),
                  SizedBox(
                    height: 230,
                  ),
                  Container(
                    
                    width: 390,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () async {
                            if (ap.isSignedIn == true) {
                              await ap.getDataFromSP().whenComplete(() =>
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomNav())));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ubsc2()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 110,
                              ),
                              Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'UberReg',
                                    fontSize: 16),
                              ),
                              SizedBox(
                                width: 88,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
