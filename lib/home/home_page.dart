import 'package:flutter/material.dart';
import 'package:sendme_work/common/payment_method_widget.dart';

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
        automaticallyImplyLeading: false,
        title: const Text('Hi Sullivan!'),
        actions: [
          OutlinedButton(onPressed: () {}, child: const Icon(Icons.menu))
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.grey,
          ),
          //Card
          Expanded(
            child: ListView(
              children: const [
                PaymentMethodWidget(),
                PaymentMethodWidget(),
              ],
            ),
          ),

          //Super Card
        ],
      ),
    );
  }
}
