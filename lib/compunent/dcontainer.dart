import 'package:flutter/material.dart';
import 'package:taskassiment/screens/viewitem_Screen.dart';

import '../models/dashboard_model.dart';
import 'Mcolor.dart';

class Dcontainer extends StatelessWidget {
  Dcontainer(this.data);

  dataModel data;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ViewItemSreen(data)));
          },
          child: Container(
            margin: const EdgeInsets.only(right: 70, top: 40),
            height: size.height * 0.2,
            width: size.width,
            color: Mcolor.lgreen,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Air Purifier',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Image(
                          image: AssetImage(
                        'assets/dashboard/foot.png',
                      ))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    data.name.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 30),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        data.price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.10,
                      ),
                      const Icon(
                        Icons.favorite_border,
                        size: 40,
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Image(
                          image: AssetImage(
                        'assets/dashboard/emoji.png',
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 4,
          bottom: 40,
          child: Image.asset(
            data.image.toString(),
            height: size.height * 0.20,
          ),
        ),
      ],
    );
  }
}
