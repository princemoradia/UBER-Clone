import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:uber/ubscreen1.dart';

class UbSettings extends StatefulWidget {
  const UbSettings({super.key});

  @override
  State<UbSettings> createState() => _UbSettingsState();
}

class _UbSettingsState extends State<UbSettings> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 8),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: FaIcon(
                        FontAwesomeIcons.close,
                        size: 40,
                      )),
                ),
              ],
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    "Settings",
                    style: TextStyle(fontFamily: "UberBold", fontSize: 50),
                  ),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(ap.userModel.profilePic),
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                ),
                SizedBox(width: 80),
                Text(
                  ap.userModel.name,
                  style: TextStyle(fontFamily: "UberBold", fontSize: 30),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                  Icon(Icons.home,size: 30,),
                  SizedBox(width: 30,),
                  Text("Add home",style: TextStyle(fontFamily: "UberBold"),),
                  SizedBox(width: 206,),
                  Padding(
                    padding: const EdgeInsets.only(right:16.0),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:76.0),
              child: Divider(color: Colors.grey,),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                  Icon(Icons.work,size: 30,),
                  SizedBox(width: 30,),
                  Text("Add work",style: TextStyle(fontFamily: "UberBold"),),
                  SizedBox(width: 214,),
                  Padding(
                    padding: const EdgeInsets.only(right:16.0),
                    child: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                  ),
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.only(left:76.0),
              child: Divider(color: Colors.grey,),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                  Icon(Icons.location_on,size: 30,),
                  SizedBox(width: 30,),
                  Text("Shortcuts",style: TextStyle(fontFamily: "UberBold"),),
                  SizedBox(width: 214,),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                ],
              ),
            ),Padding(
              padding: const EdgeInsets.only(left:76.0),
              child: Divider(color: Colors.grey,),
            ),
             SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                  Icon(Icons.lock,size: 30,),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Text("Privacy                                             ",style: TextStyle(fontFamily: "UberBold"),),
                      Text("Manage the data you share "),
                      Text("with us                                     "),
                    ],
                  ),
                  SizedBox(width: 71,),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left:76.0),
              child: Divider(color: Colors.grey,),
            ), SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                  Icon(Icons.security,size: 30,),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Text("Security                                              ",style: TextStyle(fontFamily: "UberBold"),),
                      SizedBox(height: 5,),
                      Text('Control your account security'),
                      Text('with 2 step verification           '),
                    
                    ],
                  ),
                  SizedBox(width: 60,),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                ],
              ),
              
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left:76.0),
              child: Divider(color: Colors.grey,),
            ),
            Padding(
              padding: const EdgeInsets.only(left:16.0,top: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Trusted Contacts')),
            ),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Row(
                children: [
                    FaIcon(FontAwesomeIcons.contactCard,size: 13,color: Colors.grey,),
                    SizedBox(width: 30,),
                    Text('Manage trusted contacts',style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
            SizedBox(height: 9,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 20),
            child: Text('Share your trip status with family and friends with a single trip'),
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Text('Safety'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text('Control your safety settings, including RideCheck notifications'),
          ),
          SizedBox(height: 10,),
          Divider(
            thickness: 10,
            color: Colors.grey,
          ),
          InkWell(
            onTap: ()async{
                ap.userSignOut().then((value) => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>Ubsc1()), (route) => false));
            },
            child: Padding(
              padding: const EdgeInsets.only(left:16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Sign Out',style: TextStyle(fontFamily: "UberBold",fontSize: 20),)),
            )),
            SizedBox(height: 40,),
          ],
          
        ),
      ),
    );
  }
}
