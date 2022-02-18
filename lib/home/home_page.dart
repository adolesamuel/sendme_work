import 'package:flutter/material.dart';
import 'package:sendme_work/common/bank_card.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
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
            //
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Super Card',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),

            const SizedBox(
              height: 8.0,
            ),

            //Super Card
            SizedBox(
              height: 200,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                BankCardWidget(),
                BankCardWidget(),
                BankCardWidget(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
