import 'package:flutter/material.dart';
import 'package:number_display/number_display.dart';
import 'package:sendme_work/common/bankcard/half_semi_circle.dart';
import 'package:sendme_work/common/bankcard/card_data.dart';
import 'package:sendme_work/core/utils/color.dart';

class BankCardWidget extends StatelessWidget {
  final CardData cardData;
  BankCardWidget({Key? key, required this.cardData}) : super(key: key);

  String? cardImage(CardCompany cardCompany) {
    if (cardCompany == CardCompany.visa) {
      return 'assets/visa-2.png';
    } else if (cardCompany == CardCompany.mastercard) {
      return 'assets/mscard.png';
    } else {
      //using visa as default card image
      return 'assets/visa-2.png';
    }
  }

  final displayValue = createDisplay();

  @override
  Widget build(BuildContext context) {
    //Color for Bank Card
    Color textColor = cardData.cardColor.computeLuminance() > 0.5
        ? Colors.black
        : AppColor.appgrey;

    return Center(
      child: Container(
        height: 150.0,
        width: 350.0,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: cardData.cardColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Stack(
          children: [
            //Background artifact
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                clipBehavior: Clip.hardEdge,
                child: HalfSemiCircle(
                  color: cardData.cardColor,
                ),
              ),
            ),

            //Card Contents
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  //Card Name and Expiry date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(cardImage(cardData.cardCompany)!),
                            width: 50,
                            height: 50,
                            color: cardData.cardCompany != CardCompany.visa
                                ? null
                                : cardData.cardColor.computeLuminance() > 0.5
                                    ? Colors.black
                                    : Colors.white,
                          ),
                          if (cardData.verified) ...[
                            const SizedBox(
                              width: 8.0,
                            ),
                            const CircleAvatar(
                              radius: 8,
                              backgroundColor:
                                  Color.fromARGB(255, 152, 143, 221),
                              child: Center(
                                child: Icon(
                                  Icons.check,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      Text(
                        cardData.expiryDate,
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  ),
                  //Cash Symbol and Card Cash Value
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(color: textColor),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          displayValue(cardData.cardValue),
                          style: TextStyle(
                            color: textColor,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                  //Card Number
                  Text(
                    '**** **** **** ${cardData.last4Number}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                        fontSize: 18,
                        wordSpacing: 25,
                        letterSpacing: 4.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
