import 'package:flutter/material.dart';

class CircleCard extends StatelessWidget {
  const CircleCard({super.key, this.assetImage});

  final String? assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 0.4, color: Colors.black),
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('$assetImage'), fit: BoxFit.contain),
      ),
    );
  }
}
