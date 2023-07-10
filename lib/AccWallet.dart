import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccWallet extends StatefulWidget {
  const AccWallet({super.key});

  @override
  State<AccWallet> createState() => _AccWalletState();
}

class _AccWalletState extends State<AccWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => UbAccount()));
          //   },
          //   child: 
            Column(
              children: [
                SizedBox(
                  height: 33,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        )),
                    Text(
                      'Wallet                                  ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'UberMed',
                          fontSize: 35),
                    )
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(229, 229, 229, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Uber Cash                ',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: 'UberMed'),
                              ),
                              // SizedBox(height: ,),
                              Text(
                                '₹0.00 ',
                                style: TextStyle(
                                    fontFamily: 'UberBold',
                                    fontSize: 40,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Gift card ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'UberMed'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          FaIcon(
                            FontAwesomeIcons.angleRight,
                            color: Colors.grey,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 380,
                  height: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Send a gift                   ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'UberMed',
                                      fontSize: 19),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'You can now send an instant gift',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'UberReg',
                                      fontSize: 12),
                                ),
                                Text(
                                  'card for use on Uber                      ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'UberReg',
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Send a gift',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        style: TextButton.styleFrom(
                                            backgroundColor: Color.fromRGBO(
                                                229, 229, 229, 100),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        50)))),
                                    SizedBox(
                                      width: 100,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 45,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Image(
                                      image: AssetImage(
                                          'assets/images/gift.png'))),
                            ],
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Payment methods',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 21),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.money,
                            color: Colors.green.shade300,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Cash',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'UberReg',
                                fontSize: 21),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Add payment method or reedem...',
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(229, 229, 229, 100),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Trip profiles',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 21),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Personal',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberReg',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.cases_sharp,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Text(
                            'Start using Uber for Business     ',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'UberReg',
                                fontSize: 15),
                          ),
                          Text(
                            'Turn on business travel features',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'UberReg',
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Vouchers',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 21),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          child: Image(
                              image: AssetImage('assets/images/voucher.png'))),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Vouchers',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberReg',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 30,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Add voucher code',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberMed',
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Promotions',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberBold',
                            fontSize: 21),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          child: FaIcon(
                            FontAwesomeIcons.tag,
                            size: 40,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Promotions',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberReg',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 30,
                          )),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Add promo code',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'UberMed',
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
        ],
      ),
    ));
  }
}
