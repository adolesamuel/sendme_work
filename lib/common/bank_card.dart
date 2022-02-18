import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
      child: Column(children: [
        //Card Name and Expiry date
        Row(
          children: const [
            //Should be image
            Text('VISA'),
            Text('08/28'),
          ],
        ),
        //Cash Symbol and Card Cash Value
        Row(
          children: const [
            Text('\$'),
            Text('1,260.28'),
          ],
        ),

        //Card Number
        const Text('**** **** **** 7735'),
      ]),
    );
  }
}
