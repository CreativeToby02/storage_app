import 'package:flutter/material.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('images/office.jpg'))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Docs and files with simple and secure storage',
                  style: TextStyle(fontSize: 45, color: Colors.white),
                ),
                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'Second');
                    });
                  },
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Get started',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'By connecting, I accept ',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                        child: Text(
                      'Terms of Service',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.deepPurple.shade400),
                    )),
                    const SizedBox(height: 50),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
