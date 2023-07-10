import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UbBusiness extends StatefulWidget {
  const UbBusiness({super.key});

  @override
  State<UbBusiness> createState() => _UbBusinessState();
}

class _UbBusinessState extends State<UbBusiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ))),
            ),
          ),
          Container(
            width: 350,
            height: 400,
            decoration: BoxDecoration(color: Color.fromRGBO(239, 243, 254, 1)),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage("assets/images/uber16.png")),
                    Column(
                      children: [
                        Text(
                          'Get more with',
                          style:
                              TextStyle(fontFamily: "UberBold", fontSize: 20),
                        ),
                        Text(
                          'business travel',
                          style:
                              TextStyle(fontFamily: "UberBold", fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(FontAwesomeIcons.check),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          "Quicker, easier expensing   ",
                          style: TextStyle(fontFamily: "UberMed"),
                        ),
                        Text(
                          "Sync automatically with   ",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        ),
                        Text(
                          "expensing apps                  ",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(FontAwesomeIcons.check),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          "Keep work trips separate    ",
                          style: TextStyle(fontFamily: "UberMed"),
                        ),
                        Text(
                          "Get recipts to your work ",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        ),
                        Text(
                          "gmail                                        ",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FaIcon(FontAwesomeIcons.check),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Text(
                          "Get travel reports                    ",
                          style: TextStyle(fontFamily: "UberMed"),
                        ),
                        Text(
                          "See trip activity all in one",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        ),
                        Text(
                          "place                                       ",
                          style: TextStyle(fontFamily: "UberReg", fontSize: 16),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 300,
          ),
          Container(
            height: 50,
            width: 390,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Text('Turn on')),
          )
        ],
      ),
    );
  }
}
