import 'package:flutter/material.dart';
import 'package:sendme_work/core/utils/color.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: AppColor.paymentMethodGrey,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Payment method Image.
            Image.asset(
              'assets/paypal.png',
              height: 50,
              width: 50,
            ),

            //
            const Text('Payment Method Name'),

            //
            Row(
              children: const [
                Text('\$'),
                Text('1,260.28'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
