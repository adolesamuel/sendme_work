import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);

  final Color color = Colors.grey.shade300;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: const [
            Text(
              'Hi, ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'Sullivan!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(
                  color: color, width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Icon(Icons.menu),
          ),
        )
      ]),
    );
  }
}
