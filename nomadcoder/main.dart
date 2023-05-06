import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final textStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final textStyle1 = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
final textStyle2 = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.bold,
);
final boldText = TextStyle(
  fontSize: 31,
  fontWeight: FontWeight.bold,
);
final cardText = TextStyle(
  color: Colors.black,
  fontSize: 26,
  fontWeight: FontWeight.bold,
);
final cardText1 = TextStyle(
  color: Colors.black,
  fontSize: 23,
);
final cardText2 = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.w300,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.menu_outlined,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Global Wallet',
                          style: textStyle,
                        ),
                        Text(
                          'welcome to Anon',
                          style: textStyle2,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Total Balance',
                      style: textStyle1,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    height: 50,
                    child: Text(
                      '\$5 194 382',
                      style: boldText,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 3, 0),
                          width: 150,
                          height: 50,
                          child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[400]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                              onPressed: () {},
                              child: Text(
                                'Transfer',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          width: 150,
                          height: 50,
                          child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blueGrey[400]),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                              onPressed: () {},
                              child: Text(
                                'Request',
                                style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        'Wallets',
                        style: textStyle,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'View All',
                        style: textStyle2,
                      ),
                    ),
                  ]),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20))),
                      child: Row(children: [
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              alignment: Alignment.centerLeft,
                              height: 80,
                              child: Text(
                                'Euro',
                                style: cardText,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '6 428€‎',
                                      style: cardText1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'EUR',
                                      style: cardText2,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Container(
                          child: Image.asset(
                            'assets/image1.jpg',
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20))),
                      child: Row(children: [
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              alignment: Alignment.centerLeft,
                              height: 80,
                              child: Text(
                                'Dollar',
                                style: cardText,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '55 622\$',
                                      style: cardText1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'USD',
                                      style: cardText2,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Container(
                          child: Image.asset(
                            'assets/image2.jpg',
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey[300],
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20))),
                      child: Row(children: [
                        Expanded(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              alignment: Alignment.centerLeft,
                              height: 80,
                              child: Text(
                                'Rupee',
                                style: cardText,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(
                                      '28 981₹',
                                      style: cardText1,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                    child: Text(
                                      'INR',
                                      style: cardText2,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                        Container(
                          child: Image.asset(
                            'assets/image3.jpg',
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ]),
                    ),
                  ]),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
