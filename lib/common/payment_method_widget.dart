import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';
import 'package:sendme_work/core/utils/color.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String paymentMethodName;
  final ImageProvider<Object> paymentMethodImage;
  final double value;

  PaymentMethodWidget({
    Key? key,
    required this.paymentMethodName,
    required this.paymentMethodImage,
    required this.value,
  }) : super(key: key);

  final displayValue = createDisplay();

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
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '\$',
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        displayValue(value),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
