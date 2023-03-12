import 'package:flutter/material.dart';
import 'package:taskassiment/screens/dashboard.dart';
import 'package:taskassiment/screens/signup_screen.dart';
import 'package:taskassiment/screens/start_screen.dart';

import 'compunent/Mcolor.dart';
import 'compunent/Mcontainer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StartScreen()));
                  },
                  child: const Image(
                    image: AssetImage('assets/login/backarrow.png'),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    const Image(image: AssetImage('assets/login/group.png')),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    const Text(
                      'PLANTIFY',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Mcolor.green),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Masukan NISN dan password untuk\nmemulai belajar sekarang',
                  style: TextStyle(color: Mcolor.green),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Username/ Email'),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black,
                        ),
                        hintText: 'Username/ Email',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Password'),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        hintText: 'Password',
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  width: size.width,
                  child: const Text('Forget password'),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  child: Mcontainer(
                    text: 'LOGIN',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
