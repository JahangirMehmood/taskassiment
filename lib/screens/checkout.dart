import 'package:flutter/material.dart';
import 'package:taskassiment/login_screen.dart';
import 'package:taskassiment/screens/addtocart.dart';

import '../compunent/Mcolor.dart';
import '../compunent/Mcontainer.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/checkout/top.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddtoCart()));
                      },
                      child: Image.asset('assets/login/backarrow.png')),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height * 0.3,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Order\nReceived',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Mcolor.dgreen),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Image.asset('assets/checkout/bottom.png'),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Mcontainer(
                            text: 'KIRIM',
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
