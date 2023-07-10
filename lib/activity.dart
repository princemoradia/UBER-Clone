import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UbActivity extends StatefulWidget {

  const UbActivity({super.key});

  @override
  State<UbActivity> createState() => _UbActivityState();
}

class _UbActivityState extends State<UbActivity> {
  get userUID => null;

  // var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(         
          child: Column(
            children: [           
              SizedBox(
                height: 25,
              ),
              Container(
                child: Row(children: [
                  
                    Text('Activity',style: TextStyle(fontFamily: 'UberBold',color: Colors.black,fontSize:35),)
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Past                                                             ',style: TextStyle(color: Colors.black,fontFamily: 'UberMed',fontSize: 21),),
              SizedBox(height: 30),
              Text("You don't have any past activity                                                             ",style: TextStyle(color: Colors.black,fontFamily: 'UberBold',fontSize: 15),),
              SizedBox(height: 20,),
              Row(
                children: [
                 FaIcon(FontAwesomeIcons.solidClock,size: 30,),
                 SizedBox(width: 30,),
                 Text('View older history',style: TextStyle(color: Colors.black,fontFamily: 'UberMed'),),
                 SizedBox(width: 150,),
                 FaIcon(FontAwesomeIcons.angleRight,color: Colors.grey,),
                ],
              ),          
            ],
            
          ),
        ),
      ),
      
    );
  }
}
