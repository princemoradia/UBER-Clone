import 'package:flutter/material.dart';

class UbLegal extends StatefulWidget {
  const UbLegal({super.key});

  @override
  State<UbLegal> createState() => _UbLegalState();
}

class _UbLegalState extends State<UbLegal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ],
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Legal",
                  style: TextStyle(fontFamily: "UberBold", fontSize: 50),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Copyright                      ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Terms & Conditions   ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Privacy Policy               ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Data providers            ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Software licences      ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Location information",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "City regulations          ",
                      style: TextStyle(fontFamily: "UberReg", fontSize: 20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
