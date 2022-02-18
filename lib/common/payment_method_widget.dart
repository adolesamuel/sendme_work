import 'package:flutter/material.dart';
import 'package:sendme_work/core/utils/color.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String paymentMethodName;
  final ImageProvider<Object> paymentMethodImage;

  const PaymentMethodWidget({
    Key? key,
    required this.paymentMethodName,
    required this.paymentMethodImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: AppColor.paymentMethodGrey,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Payment method Image.
            //I can do this because i know it's a

            CircleAvatar(
              backgroundColor: AppColor.paymentMethodAlmostWhite,
              child: Image(
                image: paymentMethodImage,
                height: 25,
                width: 25,
              ),
            ),

            //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentMethodName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.paymentMethodNameColor),
                ),
                const SizedBox(
                  height: 4.0,
                ),

                //
                Row(
                  children: const [
                    Text('\$'),
                    Text('1,260.28'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
