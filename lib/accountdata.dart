// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/ubscreen1.dart';

class AccountDataView extends StatefulWidget {
  const AccountDataView({super.key});

  @override
  State<AccountDataView> createState() => _AccountDataViewState();
}

class _AccountDataViewState extends State<AccountDataView> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () async {
                        ap.userSignOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>Ubsc1()), (route) => false));
                      },
                      child: Icon(Icons.logout)),
                )),
            CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(ap.userModel.profilePic),
              radius: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Text(ap.userModel.name,style: TextStyle(fontFamily: "UberBold",fontSize: 30),),
            SizedBox(height: 10,),
            Text(ap.userModel.phoneNumber,style: TextStyle(fontFamily: "UberMed",fontSize: 15),),
            Text(ap.userModel.email,style: TextStyle(fontFamily: "UberMed",fontSize: 15),),
            Text(ap.userModel.bio,style: TextStyle(fontFamily: "UberMed",fontSize: 15),),
          ],
        ),
      ),
    );
  }
}
