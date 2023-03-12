import 'package:flutter/material.dart';

import '../compunent/Mcolor.dart';
import '../models/dashboard_model.dart';

class ContainerTile extends StatelessWidget {
  const ContainerTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Mcolor.lgreen,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.only(right: 40, top: 30),
          width: size.width * 0.5,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        child: const Text(
                          'Air Purifier',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset('assets/dashboard/foot.png')
                    ],
                  ),
                  const Text(
                    'Peperomia',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        '400',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.favorite,
                        size: 20,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Positioned(
          right: -20,
          top: -10,
          child: Image.asset(
            'assets/dashboard/flower2.png',
            height: 150,
          ),
        ),
      ],
    );
  }
}
