import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:storage_app/components/circleavatar.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {super.key,
      this.leadingText,
      this.trailingText,
      this.barPercent,
      this.image});

  final String? leadingText;
  final String? trailingText;
  final double? barPercent;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200, width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                        height: 40,
                        width: 40,
                        image: AssetImage('images/$image.png')),
                    SizedBox(width: 5),
                    Text('$leadingText',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text('$trailingText',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text('%',
                        style: TextStyle(color: Colors.black, fontSize: 10))
                  ],
                ),
              ],
            ),
            LinearPercentIndicator(
              barRadius: Radius.circular(8),
              lineHeight: 10,
              percent: barPercent!,
              progressColor: Color(0xff573BE9),
              backgroundColor: Color(0xffEFECFF),
            )
          ],
        ),
      ),
    );
  }
}
