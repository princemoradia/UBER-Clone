// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:geodesy/geodesy.dart';
// import 'package:latlong2/latlong.dart';
// import 'package:provider/provider.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:uber/bottomnav.dart';
// import 'package:uber/provider/auth_provider.dart';

// class MyAppG extends StatelessWidget {
//   const MyAppG({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final start = TextEditingController();
//   final end = TextEditingController();
//   bool isVisible = false;
//   List<LatLng> routpoints = [LatLng(52.05884, -1.345583)];
//   double distance = 0.0;
//   String selectedCab = 'Standard';
//   double fare = 0.0;
//   double fareDistance = 0.0;
//   late Razorpay razorpay;

//   @override
//   void initState() {
//     super.initState();
//     razorpay = Razorpay();
//     razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }

//   @override
//   void dispose() {
//     razorpay.clear();
//     super.dispose();
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     double amount = fare;
//     final ap = Provider.of<AuthProvider>(context, listen: false);
//     // Get start and end locations
//     String startLocation = start.text;
//     String endLocation = end.text;

//     // Fetch UID from the "users" collection
//     FirebaseFirestore.instance
//         .collection('users')
//         .where('email', isEqualTo: ap.userModel.email)
//         .get()
//         .then((QuerySnapshot snapshot) {
//       if (snapshot.docs.isNotEmpty) {
//         String uid = (snapshot.docs[0].data() as Map<String, dynamic>)['uid']
//             as String;

//         // Create a data map with the required fields
//         Map<String, dynamic> data = {
//           'startLocation': startLocation,
//           'endLocation': endLocation,
//           'paymentAmount': amount,
//           'uid': uid,
//           'bookedAt': DateTime.now().toUtc(), // Add the current time
//         };

//         // Save the data to Firebase collection
//         FirebaseFirestore.instance
//             .collection('rides')
//             .add(data)
//             .then((value) {
//           print('Data saved to Firebase: $value');
//         }).catchError((error) {
//           print('Error saving data to Firebase: $error');
//         });
//       }
//     }).catchError((error) {
//       print('Error fetching UID: $error');
//     });
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => BottomNav()));
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     print('Payment Error: ${response.message}');
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     print('External Wallet: ${response.walletName}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 TextField(
//                   controller: start,
//                   decoration:
//                       InputDecoration(hintText: 'Enter Starting PostCode'),
//                 ),
//                 SizedBox(height: 15),
//                 TextField(
//                   controller: end,
//                   decoration:
//                       InputDecoration(hintText: 'Enter Ending PostCode'),
//                 ),
//                 SizedBox(height: 15),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.grey[500],
//                   ),
//                   onPressed: () async {
//                     List<Location> startLocations =
//                         await locationFromAddress(start.text);
//                     List<Location> endLocations =
//                         await locationFromAddress(end.text);

//                     var startLatitude = startLocations[0].latitude;
//                     var startLongitude = startLocations[0].longitude;
//                     var endLatitude = endLocations[0].latitude;
//                     var endLongitude = endLocations[0].longitude;

//                     var url = Uri.parse(
//                         'http://router.project-osrm.org/route/v1/driving/$startLongitude,$startLatitude;$endLongitude,$endLatitude?steps=true&annotations=true&geometries=geojson&overview=full');
//                     var response = await http.get(url);
//                     print(response.body);
//                     setState(() {
//                       routpoints = [];
//                       var ruter = jsonDecode(response.body)['routes'][0]
//                           ['geometry']['coordinates'];
//                       for (int i = 0; i < ruter.length; i++) {
//                         var reep = ruter[i].toString();
//                         reep = reep.replaceAll("[", "");
//                         reep = reep.replaceAll("]", "");
//                         var lat1 = reep.split(',');
//                         var long1 = reep.split(",");
//                         routpoints.add(LatLng(
//                             double.parse(lat1[1]), double.parse(long1[0])));
//                       }
//                       isVisible = !isVisible;
//                       print(routpoints);

//                       // Calculate the distance between start and end locations
//                       distance = Distance().distance(
//                         LatLng(startLocations[0].latitude,
//                             startLocations[0].longitude),
//                         LatLng(endLocations[0].latitude,
//                             endLocations[0].longitude),
//                       );
//                       fareDistance = distance / 100;
//                       // Calculate fare based on the selected cab type
//                       fare = calculateFare(fareDistance, selectedCab);
//                     });
//                   },
//                   child: Text('Press'),
//                 ),
//                 SizedBox(height: 10),
//                 Text('Distance: ${distance / 1000} kilometers'),
//                 SizedBox(height: 10),
//                 Text('Selected Cab: $selectedCab'),
//                 SizedBox(height: 10),
//                 Text('Fare: $fare'),
//                 SizedBox(
//                   height: 500,
//                   width: 400,
//                   child: Visibility(
//                     visible: isVisible,
//                     child: FlutterMap(
//                       options: MapOptions(
//                         center: routpoints[0],
//                         zoom: 10,
//                       ),
//                       nonRotatedChildren: [
//                         // AttributionWidget.defaultWidget(source: 'OpenStreetMap contributors',
//                         // onSourceTapped: null),
//                       ],
//                       children: [
//                         TileLayer(
//                           urlTemplate:
//                               'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//                           userAgentPackageName: 'com.example.app',
//                         ),
//                         PolylineLayer(
//                           polylineCulling: false,
//                           polylines: [
//                             Polyline(
//                                 points: routpoints,
//                                 color: Colors.blue,
//                                 strokeWidth: 9)
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Text('Select Cab Type:'),
//                 DropdownButton<String>(
//                   value: selectedCab,
//                   onChanged: (String? newValue) {
//                     setState(() {
//                       selectedCab = newValue!;
//                       fare = calculateFare(fareDistance, selectedCab);
//                     });
//                   },
//                   items: <String>['Standard', 'Premium', 'Luxury', 'SUV']
//                       .map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value),
//                     );
//                   }).toList(),
//                 ),
//                 SizedBox(height: 10),
//                 ElevatedButton(
//                   onPressed: () {
//                     openCheckout();
//                   },
//                   child: Text('Pay'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void openCheckout() {
//     double amount = fare * 100;

//     var options = {
//       'key': 'rzp_test_8y4WVGzmOKU7PB', // Replace with your Razorpay API Key
//       'amount': amount,
//       'name': 'Uber',
//       'description': 'Fare Payment',
//       'prefill': {'contact': '9328736937', 'email': 'princemoradia1@gmail.com'},
//       'external': {
//         'wallets': ['paytm']
//       }
//     };

//     try {
//       razorpay.open(options);
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   double calculateFare(double fareDistance, String cabType) {
//     switch (cabType) {
//       case 'Standard':
//         fare = fareDistance * 1;
//         break;
//       case 'Premium':
//         fare = fareDistance * 1.5;
//         break;
//       case 'Luxury':
//         fare = fareDistance * 2.0;
//         break;
//       case 'SUV':
//         fare = fareDistance * 2.5;
//         break;
//     }
//     return fare;
//   }
// }






import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geodesy/geodesy.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uber/bottomnav.dart';
import 'package:uber/provider/auth_provider.dart';

class MyAppG extends StatelessWidget {
  const MyAppG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final start = TextEditingController();
  final end = TextEditingController();
  bool isVisible = false;
  List<LatLng> routpoints = [LatLng(52.05884, -1.345583)];
  double distance = 0.0;
  String selectedCab = 'Standard';
  double fare = 0.0;
  double fareDistance = 0.0;
  late Razorpay razorpay;
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    razorpay = Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    razorpay.clear();
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    double amount = fare;
    final ap = Provider.of<AuthProvider>(context, listen: false);
    // Get start and end locations
    String startLocation = start.text;
    String endLocation = end.text;

    // Fetch UID from the "users" collection
    FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: ap.userModel.email)
        .get()
        .then((QuerySnapshot snapshot) {
      if (snapshot.docs.isNotEmpty) {
        String uid = (snapshot.docs[0].data() as Map<String, dynamic>)['uid']
            as String;

        // Create a data map with the required fields
        Map<String, dynamic> data = {
          'startLocation': startLocation,
          'endLocation': endLocation,
          'paymentAmount': amount,
          'uid': uid,
          'bookedAt': DateTime.now().toUtc(), // Add the current time
          'selectedTime': selectedTime!.format(context), // Add the selected time
        };

        // Save the data to Firebase collection
        FirebaseFirestore.instance
            .collection('rides')
            .add(data)
            .then((value) {
          print('Data saved to Firebase: $value');
        }).catchError((error) {
          print('Error saving data to Firebase: $error');
        });
      }
    }).catchError((error) {
      print('Error fetching UID: $error');
    });

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BottomNav()));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Payment Error: ${response.message}');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External Wallet: ${response.walletName}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: start,
                  decoration:
                      InputDecoration(hintText: 'Enter Starting PostCode'),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: end,
                  decoration:
                      InputDecoration(hintText: 'Enter Ending PostCode'),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[500],
                  ),
                  onPressed: () async {
                    List<Location> startLocations =
                        await locationFromAddress(start.text);
                    List<Location> endLocations =
                        await locationFromAddress(end.text);

                    var startLatitude = startLocations[0].latitude;
                    var startLongitude = startLocations[0].longitude;
                    var endLatitude = endLocations[0].latitude;
                    var endLongitude = endLocations[0].longitude;

                    var url = Uri.parse(
                        'http://router.project-osrm.org/route/v1/driving/$startLongitude,$startLatitude;$endLongitude,$endLatitude?steps=true&annotations=true&geometries=geojson&overview=full');
                    var response = await http.get(url);
                    print(response.body);
                    setState(() {
                      routpoints = [];
                      var ruter = jsonDecode(response.body)['routes'][0]
                          ['geometry']['coordinates'];
                      for (int i = 0; i < ruter.length; i++) {
                        var reep = ruter[i].toString();
                        reep = reep.replaceAll("[", "");
                        reep = reep.replaceAll("]", "");
                        var lat1 = reep.split(',');
                        var long1 = reep.split(",");
                        routpoints.add(LatLng(
                            double.parse(lat1[1]), double.parse(long1[0])));
                      }
                      isVisible = !isVisible;
                      print(routpoints);

                      // Calculate the distance between start and end locations
                      distance = Distance().distance(
                        LatLng(startLocations[0].latitude,
                            startLocations[0].longitude),
                        LatLng(endLocations[0].latitude,
                            endLocations[0].longitude),
                      );
                      fareDistance = distance / 100;
                      // Calculate fare based on the selected cab type
                      fare = calculateFare(fareDistance, selectedCab);
                    });
                  },
                  child: Text('Press'),
                ),
                SizedBox(height: 10),
                Text('Distance: ${distance / 1000} kilometers'),
                SizedBox(height: 10),
                Text('Selected Cab: $selectedCab'),
                SizedBox(height: 10),
                Text('Fare: $fare'),
                SizedBox(
                  height: 500,
                  width: 400,
                  child: Visibility(
                    visible: isVisible,
                    child: FlutterMap(
                      options: MapOptions(
                        center: routpoints[0],
                        zoom: 10,
                      ),
                      nonRotatedChildren: [
                        // AttributionWidget.defaultWidget(source: 'OpenStreetMap contributors',
                        // onSourceTapped: null),
                      ],
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        PolylineLayer(
                          polylineCulling: false,
                          polylines: [
                            Polyline(
                                points: routpoints,
                                color: Colors.blue,
                                strokeWidth: 9)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('Select Cab Type:'),
                DropdownButton<String>(
                  value: selectedCab,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedCab = newValue!;
                      fare = calculateFare(fareDistance, selectedCab);
                    });
                  },
                  items: <String>['Standard', 'Premium', 'Luxury', 'SUV']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    openCheckout();
                  },
                  child: Text('Pay'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    ).then((pickedTime) {
                      if (pickedTime != null) {
                        saveBookingTime(pickedTime);
                      }
                    });
                  },
                  child: Text('Select Booking Time'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openCheckout() {
    double amount = fare * 100;

    var options = {
      'key': 'rzp_test_8y4WVGzmOKU7PB', // Replace with your Razorpay API Key
      'amount': amount,
      'name': 'Uber',
      'description': 'Fare Payment',
      'prefill': {'contact': '9328736937', 'email': 'princemoradia1@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  double calculateFare(double fareDistance, String cabType) {
    switch (cabType) {
      case 'Standard':
        fare = fareDistance * 1;
        break;
      case 'Premium':
        fare = fareDistance * 1.5;
        break;
      case 'Luxury':
        fare = fareDistance * 2.0;
        break;
      case 'SUV':
        fare = fareDistance * 2.5;
        break;
    }
    return fare;
  }

  void saveBookingTime(TimeOfDay pickedTime) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    // Get start and end locations
    String startLocation = start.text;
    String endLocation = end.text;

    // Fetch UID from the "users" collection
    FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: ap.userModel.email)
        .get()
        .then((QuerySnapshot snapshot) {
      if (snapshot.docs.isNotEmpty) {
        String uid = (snapshot.docs[0].data() as Map<String, dynamic>)['uid']
            as String;

        // Create a data map with the required fields
        Map<String, dynamic> data = {
          'startLocation': startLocation,
          'endLocation': endLocation,
          'paymentAmount': fare,
          'uid': uid,
          'bookedAt': DateTime.now().toUtc(), // Add the current time
          'bookingTime': pickedTime.format(context), // Save the picked time
        };

        // Save the data to Firebase collection
        FirebaseFirestore.instance
            .collection('rides')
            .add(data)
            .then((value) {
          print('Data saved to Firebase: $value');
        }).catchError((error) {
          print('Error saving data to Firebase: $error');
        });
      }
    }).catchError((error) {
      print('Error fetching UID: $error');
    });
  }
}

void main() {
  runApp(const MyAppG());
}
