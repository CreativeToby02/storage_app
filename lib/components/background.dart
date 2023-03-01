import 'package:flutter/material.dart';
import 'package:storage_app/components/circleavatar.dart';
import 'package:storage_app/components/circlecard.dart';
import 'package:storage_app/components/listtile.dart';
import 'package:storage_app/statistics_screen.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.26,
          color: Color(0xff0B0D11),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text('Home',
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: size.height * 0.65,
          color: Color(0xffFDFDFD),
          child: Padding(
            padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Folders', style: TextStyle(color: Colors.black45)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'Third');
                        });
                      },
                      child: Row(
                        children: [
                          Text('View all',
                              style: TextStyle(color: Colors.black)),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleImage(
                          assetImage: 'images/camera.png',
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text('Photos')
                      ],
                    ),
                    Column(
                      children: [
                        CircleImage(
                          assetImage: 'images/film.png',
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text('Video')
                      ],
                    ),
                    Column(
                      children: [
                        CircleImage(
                          assetImage: 'images/headphones.png',
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text('Audio')
                      ],
                    ),
                    Column(
                      children: [
                        CircleImage(
                          assetImage: 'images/other.png',
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text('Other')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent files',
                        style: TextStyle(color: Colors.black45)),
                    Row(
                      children: [
                        Text('View all', style: TextStyle(color: Colors.black)),
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    children: [
                      ListCard(
                        title: 'Muses.doc',
                        assetImage: 'images/google-docs.png',
                      ),
                      ListCard(
                        title: 'Carry_me.mp3',
                        assetImage: 'images/music.png',
                      ),
                      ListCard(
                        title: 'Photo_314.jpg',
                        assetImage: 'images/photo.png',
                      ),
                      ListCard(
                        title: 'Notes.doc',
                        assetImage: 'images/google-docs.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
