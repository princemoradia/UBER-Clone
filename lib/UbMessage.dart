import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UbMessage extends StatefulWidget {
  const UbMessage({super.key});

  @override
  State<UbMessage> createState() => _UbMessageState();
}

class _UbMessageState extends State<UbMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: FaIcon(
                    FontAwesomeIcons.close,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Messages",
                  style: TextStyle(
                    fontFamily: "UberMed",
                    fontSize: 50,
                  ),
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 375,
            height: 290,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    child: FaIcon(
                      FontAwesomeIcons.tag,
                      color: Colors.white,
                      size: 30,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "15% off on first 5",
                  style: TextStyle(fontFamily: "UberBold", fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Offer automatically applied for",
                  style: TextStyle(fontFamily: "UberReg", fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "limited period only",
                  style: TextStyle(fontFamily: "UberReg", fontSize: 17),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Text('Book Now')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
