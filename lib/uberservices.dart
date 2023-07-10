import 'package:flutter/material.dart';

class UberServSrcoll extends StatefulWidget {
  const UberServSrcoll({super.key});

  @override
  State<UberServSrcoll> createState() => _UberServSrcollState();
}

class _UberServSrcollState extends State<UberServSrcoll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Security                         ',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'UberBold', fontSize: 35),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Logging in to Uber                                              ',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'UberBold', fontSize: 29),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Password                                                                                                ',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'UberMed',fontSize:17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  
                    SizedBox(
                      height: 20,
                    ),
                    Divider(thickness: 1),
                  ],
                ),
              ),
              // Container(
              //   child: Column(
              //     children: [
              //       Text(
              //         'Phone number                                                                                                ',
              //         style:
              //             TextStyle(color: Colors.black, fontFamily: 'UberMed'),
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Row(
              //         children: [
              //           Text(
              //             '+91 9328736737 ',
        
              //             style: TextStyle(
              //                 color: Colors.black,
              //                 fontFamily: 'UberLight',
              //                 fontSize: 19),
                        
              //           ),
              //           Icon(Icons.verified_rounded,color: Colors.green.shade400,)
              //         ],
              //       ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Divider(thickness: 1),
              //     ],
              //   ),
              // ),
              // Container(
              //   child: Column(
              //     children: [
              //       Text(
              //         'Email                                                                                                ',
              //         style:
              //             TextStyle(color: Colors.black, fontFamily: 'UberMed'),
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       // Text(
              //       //   'PRINCE MORADIA                                          ',
              //       //   style: TextStyle(
              //       //       color: Colors.black,
              //       //       fontFamily: 'UberLight',
              //       //       fontSize: 19),
              //       // ),
              //       // Icon(Icons.triangle)
              //       Align(
              //         alignment: Alignment.bottomLeft,
              //         child: FaIcon(FontAwesomeIcons.triangleExclamation,color: Colors.amber.shade300,)),
              //       SizedBox(
              //         height: 20,
              //       ),
              //       Divider(thickness: 1),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}