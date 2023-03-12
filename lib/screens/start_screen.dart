import 'package:flutter/material.dart';
import 'package:taskassiment/screens/signup_screen.dart';
import '../compunent/Mcolor.dart' show Mcolor;
import '../compunent/Mcontainer.dart';
import '../login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: Mcolor.green,
            ),
            height: size.height * 0.50,
            width: size.width,
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.09,
                ),
                Image.asset(
                  'assets/start/logo.png',
                  height: 200,
                ),
                Text(
                  'Plantify',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.07,
                ),
                Text(
                  'GET READY\nBE HIGYENIC',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Mcolor.green),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator',
                  style: TextStyle(color: Mcolor.green, fontSize: 16),
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Mcontainer(
                    text: 'GET START',
                    //
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
