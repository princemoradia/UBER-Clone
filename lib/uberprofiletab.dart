import 'package:flutter/material.dart';

import 'package:uber/accountdata.dart';
// import 'package:uber/uberaccount.dart';
import 'package:uber/uberservices.dart';
// import 'package:uber/ubsacreen4.dart';
// import 'package:uber/ubscreen1.dart';

class UberAccProf extends StatefulWidget {
  const UberAccProf({super.key});

  @override
  State<UberAccProf> createState() => _UberAccProfState();
}

class _UberAccProfState extends State<UberAccProf> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.arrow_back),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Uber Account',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TabBar(indicatorColor: Colors.black, tabs: [
              Tab(
                child: Text(
                  'Account',
                  style: TextStyle(color: Colors.black, fontFamily: 'UberBold'),
                ),
              ),
              Tab(
                child: Text(
                  'Security',
                  style: TextStyle(color: Colors.black, fontFamily: 'UberBold'),
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                AccountDataView(),
                UberServSrcoll(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
