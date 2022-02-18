import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          //Payment method Image.
          const Text('Paypal Image'),

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
    );
  }
}
