import 'package:flutter/material.dart';
import 'package:sendme_work/core/utils/color.dart';

class TopBar extends StatelessWidget {
  final String? text;
  const TopBar({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            if (text == null) ...const [
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
            if (text != null)
              Text(
                text!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
          ],
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              border: Border.all(
                  color: AppColor.appgrey,
                  width: 1.0,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: const Icon(Icons.menu),
          ),
        )
      ]),
    );
  }
}
