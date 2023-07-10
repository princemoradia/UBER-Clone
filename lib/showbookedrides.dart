import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Ride {
  final String? startLocation;
  final String? endLocation;
  final double? paymentAmount;
  final String? uid;
  final String? bookedAt;
  final String? selectedTime;

  Ride({
    this.startLocation,
    this.endLocation,
    this.paymentAmount,
    this.uid,
    this.bookedAt,
    this.selectedTime,
  });
}

class MyRides extends StatelessWidget {
  final String userUID; // Add a field to store the user's UID

  const MyRides({Key? key, required this.userUID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('rides')
              .where('uid', isEqualTo: userUID) // Filter by user's UID
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(color: Colors.black,),);
            }

            List<Ride> rides = snapshot.data!.docs.map((DocumentSnapshot ride) {
              String? startLocation = ride['startLocation'] as String?;
              String? endLocation = ride['endLocation'] as String?;
              double? paymentAmount =
                  ride['paymentAmount']?.toDouble() as double?;
              String? uid = ride['uid'] as String?;
              Timestamp? bookedAt = ride['bookedAt'] as Timestamp?;
              String? selectedTime = ride['bookingTime'] as String?;
              String? formattedBookedAt;
              if (bookedAt != null) {
                DateTime dateTime = bookedAt.toDate();
                formattedBookedAt =
                    '${dateTime.month}/${dateTime.day}/${dateTime.year} at ${dateTime.hour}:${dateTime.minute}:${dateTime.second}';
              }

              return Ride(
                startLocation: startLocation,
                endLocation: endLocation,
                paymentAmount: paymentAmount,
                uid: uid,
                bookedAt: formattedBookedAt,
                selectedTime: selectedTime,
              );
            }).toList();

            return ListView.builder(
              itemCount: rides.length,
              itemBuilder: (BuildContext context, int index) {
                return Draggable(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 390,
                          height: 200,
                          child: ListTile(
                            title: Text(
                                'Start Location: ${rides[index].startLocation ?? ""}',style: TextStyle(color: Colors.black,fontFamily: "UberMed"),),
                            subtitle: Text(
                                'End Location: ${rides[index].endLocation ?? ""}\nPayment Amount: ${rides[index].paymentAmount ?? 0.0}\nUID: ${rides[index].uid ?? ""}\nBooked At: ${rides[index].bookedAt ?? ""}\nSelected Time: ${rides[index].selectedTime ?? ""}',style: TextStyle(color: Colors.black,fontFamily: "UberMed",fontWeight: FontWeight.w400)),
                            leading: Icon(Icons.taxi_alert,color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  feedback: Container(
                    // Customizable feedback widget when dragging
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Cancel Ride',
                        style: TextStyle(
                          fontFamily: "UberMed",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  childWhenDragging: Container(
                    // Customizable widget when dragging
                    width: 300,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onDraggableCanceled: (velocity, offset) {
                    // Handle the cancellation of the dragged ride
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Cancel Ride',style: TextStyle(fontFamily: "UberMed"),),
                          content: Text('Are you sure you want to cancel this ride?',style: TextStyle(fontFamily: "UberMed"),),
                          actions: [
                            TextButton(
                              child: Text('Cancel',style: TextStyle(fontFamily: "UberMed"),),
                              onPressed: () {
                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                            TextButton(
                              child: Text('Confirm',style: TextStyle(fontFamily: "UberMed"),),
                              onPressed: () {
                                // Delete the ride from the database
                                FirebaseFirestore.instance
                                    .collection('rides')
                                    .doc(snapshot.data!.docs[index].id)
                                    .delete();

                                Navigator.pop(context); // Close the dialog
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}






