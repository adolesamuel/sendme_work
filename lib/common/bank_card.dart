import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  const BankCardWidget({Key? key}) : super(key: key);

  final bool verified = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 150.0,
        width: 300.0,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            //Card Name and Expiry date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/visa-2.png'),
                      width: 50,
                      height: 50,
                    ),
                    if (verified) ...[
                      const SizedBox(
                        width: 8.0,
                      ),
                      const CircleAvatar(
                        radius: 8,
                        backgroundColor: Color.fromARGB(255, 152, 143, 221),
                        child: Center(
                          child: Icon(
                            Icons.check,
                            size: 10,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
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
          ],
        ),
      ),
    );
  }
}
