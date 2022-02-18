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
          ),
          //Card
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PaymentMethodWidget(),
                PaymentMethodWidget(),
              ],
            ),
          ),

          //Super Cardkk
        ],
      ),
    );
  }
}
