// import 'dart:async';
// // import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_google_places/flutter_google_places.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:provider/provider.dart';
// import 'package:uber/provider/auth_provider.dart';
// import 'package:google_api_headers/google_api_headers.dart';

// class MyMap extends StatelessWidget {
//   const MyMap({super.key});

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Basics',
//       theme: ThemeData(
//         primarySwatch: Colors.cyan,
//       ),
//       home: MyHomePage(title: ''),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   final String title;

//   const MyHomePage({super.key, required this.title});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// const kGoogleApiKey = 'AIzaSyAMiinYSgejX-EeaNO2CcXF1KmM1vLaRP8';

// final homeScaffoldKey = GlobalKey<ScaffoldState>();

// class _MyHomePageState extends State<MyHomePage> {
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//   String? _mapstyle;

//   void initState() {
//     super.initState();
//     rootBundle.loadString('assets/mapstyle.txt').then((string) {
//       _mapstyle = string;
//     });
//   }

//   Set<Marker> markersList = {};

//   late GoogleMapController myMapController;

//   TextEditingController controller = TextEditingController();

//   final Mode _mode = Mode.overlay;

//   @override
//   Widget build(BuildContext context) {
//     final ap = Provider.of<AuthProvider>(context, listen: false);

//     return Scaffold(
//       key: homeScaffoldKey,
//       body: Stack(children: [
//         GoogleMap(
//           mapType: MapType.terrain,
//           zoomControlsEnabled: false,
//           markers: markersList,
//           onMapCreated: (GoogleMapController controller) {
//             myMapController = controller;
//             myMapController.setMapStyle(_mapstyle);
//           },
//           initialCameraPosition: _kGooglePlex,
//         ),
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   CircleAvatar(
//                     backgroundColor: Colors.black,
//                     backgroundImage: NetworkImage(ap.userModel.profilePic),
//                     radius: 30,
//                   ),
//                   SizedBox(
//                     width: 40,
//                   ),
//                   Column(
//                     children: [
//                       //  Text("Hello ${ap.userModel.name}",style: TextStyle(color: Colors.black,fontFamily: 'UberBold',fontSize: 18),),
//                       RichText(
//                           text: TextSpan(children: [
//                         TextSpan(
//                             text: "Hello,  ",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'UberBold',
//                                 fontSize: 30)),
//                         TextSpan(
//                             text: "${ap.userModel.name}",
//                             style: TextStyle(
//                               color: Colors.blue,
//                               fontFamily: 'UberBold',
//                               fontSize: 30,
//                             ))
//                       ])),
//                       Text(
//                         "Where are you going?",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontFamily: 'UberBold',
//                             fontSize: 18),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: 390,
//                 height: 50,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Colors.black12,
//                 ),
//                 // child: ElevatedButton(
//                 //     onPressed: _handlebutton, child: Text('Search Places')),
//                 child: TextFormField(
//                   readOnly: true,
//                   onTap: _handlebutton,
//                   cursorColor: Colors.black,
//                   decoration: InputDecoration(
//                       contentPadding: EdgeInsets.all(10),
//                       hintText: "Search for a destination",
//                       hintStyle: TextStyle(
//                         color: Colors.black,
//                         fontFamily: 'UberMed',
//                       ),
//                       border: InputBorder.none,
//                       suffixIcon: Icon(
//                         Icons.search,
//                         color: Colors.black,
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       )),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(30.0),
//           child: Align(
//               alignment: Alignment.bottomRight,
//               child: CircleAvatar(
//                   radius: 20,
//                   backgroundColor: Colors.grey,
//                   child: FaIcon(
//                     FontAwesomeIcons.location,
//                     color: Colors.black,
//                     size: 30,
//                   ))),
//         ),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             width: 300,
//             height: 15,
//             decoration: BoxDecoration(
//               color: Colors.grey,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(12), topRight: Radius.circular(12)),
//             ),
//           ),
//         )
//       ]),
//     );
//   }

//   Future<void> _handlebutton() async {
//     Prediction?  p = await PlacesAutocomplete.show(
//         context: context,
//         apiKey: kGoogleApiKey,
//         onError: onError,
//         mode: _mode,
//         language: 'en',
//         strictbounds: false,
//         types: [""],
//         decoration: InputDecoration(
//           ),
//         components: [Component(Component.country, "IN")]);
    

//     displayPrediction(p!, homeScaffoldKey.currentState);
//   }

//   void onError(PlacesAutocompleteResponse response) {
//       void onError(PlacesAutocompleteResponse response){

//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       elevation: 0,
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: Colors.transparent,
//       content: AwesomeSnackbarContent(
//         title: 'Message',
//         message: response.errorMessage!,
//         contentType: ContentType.failure,
//       ),
//     ));

//     // homeScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(response.errorMessage!)));
//   }

//   }

//   Future<void> displayPrediction(
//       Prediction p, ScaffoldState? currentState) async {
//     GoogleMapsPlaces places = GoogleMapsPlaces(
//         apiKey: kGoogleApiKey,
//         apiHeaders: await const GoogleApiHeaders().getHeaders());

//     PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);
//     final lat = detail.result.geometry!.location.lat;
//     final lng = detail.result.geometry!.location.lng;

//     markersList.clear();
//     markersList.add(Marker(
//         markerId: const MarkerId("0"),
//         position: LatLng(lat, lng),
//         infoWindow: InfoWindow(title: detail.result.name)));

//     setState(() {});

//     myMapController
//         .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lng, lng), 14.0));
//   }
// }


// // class SearchPlacesScreen extends StatefulWidget {
// //   const SearchPlacesScreen({Key? key}) : super(key: key);

// //   @override
// //   State<SearchPlacesScreen> createState() => _SearchPlacesScreenState();
// // }

// // const kGoogleApiKey = 'AIzaSyAMiinYSgejX-EeaNO2CcXF1KmM1vLaRP8';
// // final homeScaffoldKey = GlobalKey<ScaffoldState>();

// // class _SearchPlacesScreenState extends State<SearchPlacesScreen> {
// //   static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(37.42796, -122.08574), zoom: 14.0);

// //   Set<Marker> markersList = {};

// //   late GoogleMapController googleMapController;

// //   final Mode _mode = Mode.overlay;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       key: homeScaffoldKey,
// //       body: Stack(
// //         children: [
// //           GoogleMap(
// //             initialCameraPosition: initialCameraPosition,
// //             markers: markersList,
// //             mapType: MapType.normal,
// //             onMapCreated: (GoogleMapController controller) {
// //               googleMapController = controller;
// //             },
// //           ),
// //           ElevatedButton(onPressed: _handlePressButton, child: const Text("Search Places"))
// //         ],
// //       ),
// //     );
// //   }

// //   Future<void> _handlePressButton() async {
// //     Prediction? p = await PlacesAutocomplete.show(
// //         context: context,
// //         apiKey: kGoogleApiKey,
// //         onError: onError,
// //         mode: _mode,
// //         language: 'en',
// //         strictbounds: false,
// //         types: [""],
// //         decoration: InputDecoration(
// //             hintText: 'Search',
// //             focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.white))),
// //         components: [Component(Component.country,"in")]);


// //     displayPrediction(p!,homeScaffoldKey.currentState);
// //   }

// //   void onError(PlacesAutocompleteResponse response){

// //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
// //       elevation: 0,
// //       behavior: SnackBarBehavior.floating,
// //       backgroundColor: Colors.transparent,
// //       content: AwesomeSnackbarContent(
// //         title: 'Message',
// //         message: response.errorMessage!,
// //         contentType: ContentType.failure,
// //       ),
// //     ));

// //     // homeScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(response.errorMessage!)));
// //   }

// //   Future<void> displayPrediction(Prediction p, ScaffoldState? currentState) async {

// //     GoogleMapsPlaces places = GoogleMapsPlaces(
// //       apiKey: kGoogleApiKey,
// //       apiHeaders: await const GoogleApiHeaders().getHeaders()
// //     );

// //     PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);

// //     final lat = detail.result.geometry!.location.lat;
// //     final lng = detail.result.geometry!.location.lng;

// //     markersList.clear();
// //     markersList.add(Marker(markerId: const MarkerId("0"),position: LatLng(lat, lng),infoWindow: InfoWindow(title: detail.result.name)));

// //     setState(() {});

// //      googleMapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));

// //   }
// // }

