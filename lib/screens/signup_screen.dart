import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taskassiment/login_screen.dart';
import 'package:taskassiment/screens/dashboard.dart';
import '../compunent/Mcolor.dart';
import '../compunent/Mcontainer.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController email = TextEditingController();
    TextEditingController pwowd = TextEditingController();
    // signUp() async {
    //   try {
    //     final credential =
    //         await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //       email: email.text,
    //       password: pwowd.text,
    //     );
    //   } on FirebaseAuthException catch (e) {
    //     if (e.code == 'weak-password') {
    //       print('The password provided is too weak.');
    //     } else if (e.code == 'email-already-in-use') {
    //       print('The account already exists for that email.');
    //     }
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => LoginScreen()));
    //   } catch (e) {
    //     print(e);
    //   }
    // }
    signup(context) async {
      print("calling");
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text,
          password: pwowd.text,
        );
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => DashBoard()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }

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
                            builder: (context) => const LoginScreen()));
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
                  'Signup',
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
                  children: [
                    Text('Username/ Email'),
                    TextField(
                      controller: email,
                      decoration: const InputDecoration(
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
                  children: [
                    Text('Password'),
                    TextField(
                      obscureText: true,
                      controller: pwowd,
                      decoration: const InputDecoration(
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
                SizedBox(
                  height: size.height * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    signup(context);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Mcontainer(
                    text: 'SIGNUP',
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
