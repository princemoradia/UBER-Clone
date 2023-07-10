import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:uber/provider/auth_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:country_picker/country_picker.dart';

class Ubsc2 extends StatefulWidget {
  const Ubsc2({super.key});

  @override
  State<Ubsc2> createState() => _Ubsc2State();
}

class _Ubsc2State extends State<Ubsc2> {
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );
  @override
  Widget build(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length),);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 58,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Enter your mobile number',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'UberReg',
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    width: 379,
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          phoneController.text = value;
                        });
                      },
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      maxLength: 10,
                      style: TextStyle(color: Colors.black,fontFamily: 'UberBold',fontSize: 18,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mobile number',
                          hintStyle: TextStyle(color: Colors.grey,fontFamily:'UberReg',fontWeight: FontWeight.w200),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(8),
                            child: InkWell(
                              onTap: () {
                                showCountryPicker(
                                    context: context,
                                    onSelect: (value) {
                                      setState(() {
                                        selectedCountry = value;
                                      });
                                    });
                              },
                              child: Text(
                                "${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: 'UberBold'),
                              ),
                            ),
                          ),
                          suffixIcon: phoneController.text.length > 9
                              ? Container(
                                  margin: EdgeInsets.all(8),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: Icon(
                                    Icons.done,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              : null),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: 390,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => sendPhoneNumber(),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'UberMed',
                        fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '-----------------------------------',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'or',
                  style: TextStyle(color: Colors.grey, fontFamily: 'UberReg'),
                ),
                Text(
                  '------------------------------------',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 31,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: 390,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(229, 229, 229, 100),
                        onSurface: Colors.black),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: 390,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(229, 229, 229, 100),
                        onSurface: Colors.black),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.squareFacebook,
                          color: Color.fromRGBO(66, 103, 178, 1),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with Facebook',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: 390,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(229, 229, 229, 100),
                        onSurface: Colors.black),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with email',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-----------------------------------',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'or',
                    style: TextStyle(color: Colors.grey, fontFamily: 'UberReg'),
                  ),
                  Text(
                    '------------------------------------',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_rounded,
                ),
                Text(
                  'Find my account',
                  style: TextStyle(fontFamily: 'UberMed'),
                )
              ],
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from Uber and its affiliates to the number provided',
                    style: TextStyle(
                        fontFamily: 'UberReg',
                        color: Colors.grey,
                        fontSize: 13.2),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
   void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}


// SingleChildScrollView(

//           child: Column(
//               children: [
//           SizedBox(
//             height: 58,
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Text(
//                   'Enter your mobile number',
//                   style: TextStyle(
//                       fontSize: 22, fontFamily: 'UberReg', color: Colors.black),
//                 ),
//               ),
//             ],
//           ),
//           // SizedBox(
//           //   height: 81,
//           // ),
//           Row(
//             children: [
//               //  Padding(
//               //    padding: const EdgeInsets.only(left: 16),
//               //    child: Padding(
//               //      padding: const EdgeInsets.all(16.0),
//               //      child: DropdownButtonExample2(),
//               //    ),
//                 //  Container(
//                 //   decoration: BoxDecoration(
//                 //     borderRadius: BorderRadius.circular(12),
//                 //     color: Color.fromRGBO(229, 229, 229, 100),
//                 //   ),
//                 //   width: 104,
//                 //   height:49 ,
                  
//                 //  ),
               
//                SizedBox(
//                 width:40,
//                ),
//              Padding(
//                padding: const EdgeInsets.only(right: 16),
//                child: Container(
//                 width: 260,
//                 height: 49,
               
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                    color:  Color.fromRGBO(229, 229, 229, 100),
//                 ),
//                  child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Mobile number',
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       // borderSide: BorderSide(color: Colors.black,width: 2),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(12),
//                     )
//                   ),
//                   onTap: ()
//                   {
                    
//                   },
//                  ),
//                ),
//              )
//             ],
//           ),
//           //  CSCPicker(),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Container(
//               width: 390,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Ubsc3()),
//                   );
//                 },
//                 child: Text(
//                   'Continue',
//                   style: TextStyle(
//                       color: Colors.white, fontFamily: 'UberMed', fontSize: 16),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.black,
//                     onPrimary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(6))),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '-----------------------------------',
//                 style: TextStyle(color: Colors.grey),
//               ),
//               Text(
//                 'or',
//                 style: TextStyle(color: Colors.grey, fontFamily: 'UberReg'),
//               ),
//               Text(
//                 '------------------------------------',
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 31,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Container(
//               width: 390,
//               height: 50,
//               child: TextButton(
//                   style: TextButton.styleFrom(
//                       backgroundColor: Color.fromRGBO(229, 229, 229, 100),
//                       onSurface: Colors.black),
//                   onPressed: () {},
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FaIcon(
//                         FontAwesomeIcons.google,
//                         color: Colors.black,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         'Continue with Google',
//                         style: TextStyle(color: Colors.black),
//                       )
//                     ],
//                   )),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Container(
//               width: 390,
//               height: 50,
//               child: TextButton(
//                   style: TextButton.styleFrom(
//                       backgroundColor: Color.fromRGBO(229, 229, 229, 100),
//                       onSurface: Colors.black),
//                   onPressed: () {},
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       FaIcon(
//                         FontAwesomeIcons.squareFacebook,
//                         color: Color.fromRGBO(66, 103, 178, 1),
//                         size: 30,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         'Continue with Facebook',
//                         style: TextStyle(color: Colors.black),
//                       )
//                     ],
//                   )),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Container(
//               width: 390,
//               height: 50,
//               child: TextButton(
//                   style: TextButton.styleFrom(
//                       backgroundColor: Color.fromRGBO(229, 229, 229, 100),
//                       onSurface: Colors.black),
//                   onPressed: () {},
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.mail,
//                         color: Colors.black,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         'Continue with email',
//                         style: TextStyle(color: Colors.black),
//                       )
//                     ],
//                   )),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '-----------------------------------',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 Text(
//                   'or',
//                   style: TextStyle(color: Colors.grey, fontFamily: 'UberReg'),
//                 ),
//                 Text(
//                   '------------------------------------',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.search_rounded,
//               ),
//               Text(
//                 'Find my account',
//                 style: TextStyle(fontFamily: 'UberMed'),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 65,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Text('By proceeding, you consent to get calls, Whatsapp or SMS messages, including by automated means, from Uber and its affiliates to the number provided',style: TextStyle(fontFamily: 'UberReg',color: Colors.grey,fontSize: 13.2),)
//               ],
//             ),
//           ),
//               ],
//             ),
//         ));