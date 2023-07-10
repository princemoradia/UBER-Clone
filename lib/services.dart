import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/showbookedrides.dart';
import 'package:uber/uberIntercity.dart';
// import 'package:uber/ubsacreen4.dart';

// import 'account.dart';
// import 'activity.dart';

class UbServices extends StatefulWidget {
  const UbServices({
    super.key,
  });

  @override
  State<UbServices> createState() => _UbServicesState();
}

class _UbServicesState extends State<UbServices> {
  // var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(children: [
                Text(
                  'Services',
                  style: TextStyle(
                      fontFamily: 'UberBold',
                      color: Colors.black,
                      fontSize: 35),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Go anywhere, get anything       ',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'UberBold', fontSize: 21),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(229, 229, 229, 100),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyRides(userUID: ap.userModel.uid)));
                    },
                    child: Column(
                      children: [
                        Image.asset('assets/images/car.png'),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Ride',
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
                            builder: (context) => UberIntercity()));
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
                        Image.asset('assets/images/carboy.png'),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          'Intercity',
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
                      Image.asset('assets/images/food.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Food',
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'UberMed'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 1,

      //   selectedItemColor: Colors.black,
      //   // showSelectedLabels: false ,
      //   showUnselectedLabels: false,
      //   iconSize: 30,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           Navigator.push(
      //               context, MaterialPageRoute(builder: (context) => UbSc4()));
      //         },
      //         child: Icon(
      //           Icons.home,
      //         ),
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         // onTap: () {
      //         //   Navigator.push(context,
      //         //       MaterialPageRoute(builder: (context) => UbServices()));
      //         // },
      //         child: Icon(
      //           Icons.grid_on,
      //         ),
      //       ),
      //       label: 'Services',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => UbActivity()));
      //         },
      //         child: Icon(
      //           Icons.local_activity,
      //         ),
      //       ),
      //       label: 'Activity',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: InkWell(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => UbAccount()));
      //         },
      //         child: Icon(
      //           Icons.person,
      //         ),
      //       ),
      //       label: 'Account',
      //     )
      //   ],
      //   type: BottomNavigationBarType.fixed,
      //   // onTap: (index) {
      //   //   setState(() {
      //   //     _currentindex = index+1;
      //   //   });
      //   // },
      // ),
    );
  }
}
