import 'package:flutter/material.dart';
import 'package:sendme_work/common/payment_method_widget.dart';
import 'package:sendme_work/common/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          TopBar(),
          const Divider(
            color: Colors.grey,
            height: 1.0,
          ),
          //Card
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PaymentMethodWidget(
                  paymentMethodName: 'PayPal',
                  paymentMethodImage: AssetImage('assets/paypal.png'),
                ),
                PaymentMethodWidget(
                  paymentMethodName: 'Amazon Pay',
                  paymentMethodImage: AssetImage('assets/amazon.png'),
                ),
                PaymentMethodWidget(
                  paymentMethodName: 'Amazon Pay',
                  paymentMethodImage: AssetImage('assets/amazon.png'),
                ),
                PaymentMethodWidget(
                  paymentMethodName: 'Amazon Pay',
                  paymentMethodImage: AssetImage('assets/amazon.png'),
                ),
              ],
            ),
          ),

          //Super Cardkk
        ],
      ),
    );
  }
}
