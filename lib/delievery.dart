import 'package:flutter/material.dart';
import 'package:uber/bottomnav.dart';
// import 'package:uber/ubDelievery.dart';
// import 'package:uber/uberprofiletab.dart';
// import 'package:uber/ubsacreen4.dart';

class UbDelieveryfood extends StatefulWidget {
  const UbDelieveryfood({super.key});

  @override
  State<UbDelieveryfood> createState() => _UbDelieveryfoodState();
}

class _UbDelieveryfoodState extends State<UbDelieveryfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNav()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                  ))),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                border: Border(bottom: BorderSide(color: Colors.black))),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter delievey address',
              ),
              cursorColor: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 380,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Finished'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ]),
      ),
    );
  }
}
