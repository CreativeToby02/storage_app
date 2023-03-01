import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:storage_app/components/background.dart';
import 'package:storage_app/components/containercard.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.5,
            color: Color(0xff0B0D11),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text('Statistics',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(height: 60),
                    CircularPercentIndicator(
                      radius: 100.0,
                      lineWidth: 20.0,
                      percent: 0.4,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '36%',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Used',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      progressColor: Color(0xff573BE9),
                      backgroundColor: Color(0xff414141),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xff1F2125),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('Total',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              SizedBox(width: 5),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text('40',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  Text('GB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xff573BE9),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text('Used',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)),
                              SizedBox(width: 5),
                              Row(
                                textBaseline: TextBaseline.alphabetic,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                children: [
                                  Text('14.5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  Text('GB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xffFDFDFD),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Folders',
                          style: TextStyle(color: Colors.black45)),
                      Row(
                        children: [
                          Text('View all',
                              style: TextStyle(color: Colors.black)),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ContainerCard(
                    image: 'camera',
                    leadingText: 'Photos',
                    trailingText: '42',
                    barPercent: 0.5,
                  ),
                  const SizedBox(height: 20),
                  ContainerCard(
                    image: 'film',
                    leadingText: 'Video',
                    trailingText: '12',
                    barPercent: 0.2,
                  ),
                  const SizedBox(height: 20),
                  ContainerCard(
                    image: 'headphones',
                    leadingText: 'Audio',
                    trailingText: '75',
                    barPercent: 0.8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
