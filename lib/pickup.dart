import 'package:flutter/material.dart';

import 'bottomnav.dart';

const List<String> list = <String>[
  'Today, Thu, 8 Jun',
  'Tomorrow, Fri, 9 Jun',
  'Sat, 10 Jun',
  'Fri, 11 Jun',
  'Sun, 12 Jun',
  'Mon, 13 Jun',
  'Tue, 14 Jun'
];
// const List<String> list1 = <String>['9-10','10-11','11-12','12-1','1-2','2-3','3-4'];

// const List<String> list1 = <String>['4', '3', '2', '1'];
class pickup extends StatefulWidget {
  const pickup({super.key});

  @override
  State<pickup> createState() => _pickupState();
}

class _pickupState extends State<pickup> {
  List listitem = [
    "Item-1",
    "Item-2",
    "Item-3",
    "Item-4",
    "Item-5",
  ];
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNav()));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNav()));
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pick a time               ',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'UberBold', fontSize: 30),
            ),
          ),
          DropdownButtonExample(),
          DropdownButtonExample2(),
          // Container(
          //   decoration: BoxDecoration(
          //       color: Colors.grey.shade300,
          //       border: Border(bottom: BorderSide(color: Colors.black))),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: 'Enter delievey address',
          //     ),
          //     cursorColor: Colors.black,
          //   ),
          // ),
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

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 70,
      child: DropdownButton<String>(
        value: dropdownValue,
        // icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

/// Flutter code sample for [DropdownButton].

const List<String> list1 = <String>[
  "9-10",
  "10-11",
  "11-12",
  "12-1",
  "1-2",
  "2-3",
  "3-4",
  "4-5",
  "5-6",
  "6-7",
  "7-8",
  "8-9",
];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample2(),
        ),
      ),
    );
  }
}

class DropdownButtonExample2 extends StatefulWidget {
  const DropdownButtonExample2({super.key});

  @override
  State<DropdownButtonExample2> createState() => _DropdownButtonExample2State();
}

class _DropdownButtonExample2State extends State<DropdownButtonExample2> {
  String dropdownValue = list1.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 390,
      child: DropdownButton<String>(
        value: dropdownValue,
        // icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.black,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list1.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
