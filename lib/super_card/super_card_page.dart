import 'package:flutter/material.dart';
import 'package:sendme_work/common/card_data.dart';
import 'package:sendme_work/common/top_bar.dart';

import '../common/bank_card.dart';

class SuperCardPage extends StatefulWidget {
  const SuperCardPage({Key? key}) : super(key: key);

  @override
  SuperCardPageState createState() => SuperCardPageState();
}

class SuperCardPageState extends State<SuperCardPage> {
  double space = 20.0;

  List<CardData> bankCards = [
    CardData(
      cardValue: 1260.28,
      last4Number: '7735',
      expiryDate: '08 / 28',
      cardCompany: CardCompany.visa,
      cardColor: const Color(0xFF1D2125),
      verified: true,
    ),
    CardData(
        cardValue: 1180.49,
        last4Number: '7998',
        expiryDate: '08 / 28',
        cardCompany: CardCompany.mastercard,
        cardColor: const Color(0xFFF0B28E)),
    CardData(
        cardValue: 865.39,
        last4Number: '7782',
        expiryDate: '08 / 28',
        cardCompany: CardCompany.visa,
        cardColor: const Color(0xFFE9F2F7)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            TopBar(text: 'Super Card'),
            const Divider(
              color: Colors.grey,
              height: 1.0,
            ),

            const SizedBox(
              height: 8.0,
            ),

            //Super Card
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(scrollDirection: Axis.vertical, children: [
                BankCardWidget(
                  cardData: bankCards[0],
                ),
                SizedBox(
                  height: space,
                ),
                BankCardWidget(
                  cardData: bankCards[1],
                ),
                SizedBox(
                  height: space,
                ),
                BankCardWidget(
                  cardData: bankCards[2],
                ),
                SizedBox(
                  height: space,
                ),
                Container(
                  height: 60.0,
                  width: 350.0,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.grey, width: 1.2)),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      label: const Text(
                        'Add Card',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
