// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/bottomnav.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/uberaccount.dart';
// import 'package:uber/ubsacreen4.dart';
// import 'package:uber/ubscreen2.dart';
import 'package:pinput/pinput.dart';
import 'package:uber/utils/utils.dart';

class Ubsc3 extends StatefulWidget {
  final String verificationId;
  Ubsc3({super.key, required this.verificationId});

  @override
  State<Ubsc3> createState() => _Ubsc3State();
}

class _Ubsc3State extends State<Ubsc3> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body:  SafeArea(
          child: Center(
            child: isLoading == true
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Enter the 6-digit code sent you.        ',
                                style:
                                    TextStyle(fontFamily: 'UberReg', fontSize: 21),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Pinput(
                                length: 6,
                                showCursor: true,
                                defaultPinTheme: PinTheme(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black),
                                    ),
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontFamily: 'UberBold',
                                        fontWeight: FontWeight.bold)),
                                onCompleted: (value) {
                                  setState(() {
                                    otpCode = value;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 34,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    height: 50,
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                              229,
                                              229,
                                              229,
                                              100,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(1000))),
                                        onPressed: () {},
                                        child: Text(
                                          'I havent recieved a code (0:08)',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'UberMed'),
                                        )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 500,
                              ),
                              Row(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 50,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                229,
                                                229,
                                                229,
                                                100,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(1000))),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                          child: Icon(
                                            Icons.arrow_back,
                                            color: Colors.grey,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16),
                                    child: SizedBox(
                                      width: 237,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 50,
                                      child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                229,
                                                229,
                                                229,
                                                100,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(1000))),
                                          onPressed: () {
                                            if (otpCode != null) {
                                              verifyOtp(context, otpCode!);
                                            } else {
                                              showSnackBar(
                                                  context, "Enter 6 digit code");
                                            }
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                'Next',
                                                style:
                                                    TextStyle(color: Colors.grey),
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ),
          ),
    );
  }

  // verify otp

  void verifyOtp(BuildContext context, String userOtp) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verifyOtp(
        context: context,
        verificationId: widget.verificationId,
        userOtp: userOtp,
        OnSuccess: () {
          // checking wheter user exists in DB
          ap.checkExistingUser().then((value) async {
            if (value == true) {
              // user exists
              ap.getDataFromFirestore().then((value) => ap
                  .saveUserDataToSP()
                  .then((value) => ap.setSignIn().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNav()), (route) => false)
                      )));
            } else {
              // new user
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => UberAccScroll()),
                  (route) => false);
            }
          });
        });
  }
}
