import 'package:flutter/cupertino.dart';

import 'Mcolor.dart';

class Mcontainer extends StatelessWidget {
  String text;

  Mcontainer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      height: size.height * 0.07,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Mcolor.green,
      ),
      child: Center(
        child: GestureDetector(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Mcolor.white),
          ),
        ),
      ),
    );
  }
}
