import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:storage_app/components/background.dart';
import 'package:storage_app/components/bottomappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Background(),
        Positioned(
            top: size.height * 0.125,
            height: 150,
            width: size.width,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Color(0xff1F2125),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        const Text('Available Cloud Storage',
                            style: TextStyle(color: Colors.white60)),
                        const SizedBox(height: 8),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: '14.5GB ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: 'of ',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Sanchez')),
                          TextSpan(
                              text: '40GB ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: 'used',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Sanchez'))
                        ]))
                      ],
                    ),
                    CircularPercentIndicator(
                      radius: 42.0,
                      lineWidth: 10.0,
                      percent: 0.4,
                      center: const Text(
                        '36%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      progressColor: Color(0xff573BE9),
                      backgroundColor: Color(0xff414141),
                    ),
                  ],
                ),
              ),
            ))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff0B0D11),
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff0B0D11),
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: MyBottomAppBar(),
      ),
    );
  }
}
