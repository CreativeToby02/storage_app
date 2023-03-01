import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                    minWidth: size.width * 0.2,
                    onPressed: () {},
                    child: Container(
                        height: 20,
                        width: 20,
                        child: Image(
                            color: Colors.white,
                            image: AssetImage('icons/home.png')))),
                MaterialButton(
                    minWidth: size.width * 0.2,
                    onPressed: () {},
                    child: Icon(Icons.category, color: Colors.white)),
              ],
            ),
            Row(
              children: [
                MaterialButton(
                    minWidth: size.width * 0.2,
                    onPressed: () {},
                    child: Icon(Icons.history, color: Colors.white)),
                MaterialButton(
                    minWidth: size.width * 0.2,
                    onPressed: () {},
                    child: Icon(Icons.person, color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
