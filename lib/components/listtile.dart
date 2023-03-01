import 'package:flutter/material.dart';

import 'circlecard.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, this.title, this.assetImage});

  final String? title;
  final String? assetImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleCard(
        assetImage: assetImage,
      ),
      title: Text('$title',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      subtitle:
          Text('Today', style: TextStyle(color: Colors.black54, fontSize: 10)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('0,2 ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          Text('GB', style: TextStyle(color: Colors.black54, fontSize: 10))
        ],
      ),
    );
  }
}
