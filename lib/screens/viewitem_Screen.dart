import 'package:flutter/material.dart';
import 'package:taskassiment/models/dashboard_model.dart';

import '../compunent/Mcolor.dart';
import '../tiles/containertile.dart';
import 'addtocart.dart';

class ViewItemSreen extends StatefulWidget {
  ViewItemSreen(this.data, {Key? key}) : super(key: key);

  dataModel data;

  @override
  State<ViewItemSreen> createState() => _ViewItemSreenState();
}

class _ViewItemSreenState extends State<ViewItemSreen> {
  DashboardModel dashboardModel = DashboardModel();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        //Add a ListView to the Drawer.
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Mcolor.dgreen,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/sidebar/image1.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Shop',
                        style: TextStyle(
                            color: Mcolor.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/sidebar/image2.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Plant Care',
                        style: TextStyle(
                            color: Mcolor.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/sidebar/image3.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Community',
                        style: TextStyle(
                            color: Mcolor.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/sidebar/image4.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'My Account',
                        style: TextStyle(
                            color: Mcolor.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/sidebar/image5.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Track Order',
                        style: TextStyle(
                            color: Mcolor.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'Get the dirt.',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 17),
                    decoration:
                        BoxDecoration(border: Border.all(color: Mcolor.white)),
                    child: Text(
                      'Enter your Email',
                      style: TextStyle(
                          color: Mcolor.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Text(
                    'FAQ',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'ABOUT US',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'CONTACT US',
                    style: TextStyle(
                        color: Mcolor.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: size.height * 0.06,
        decoration: BoxDecoration(
          color: Mcolor.dgreen,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const AddtoCart()));
              },
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                    child: Image.asset(
                      'assets/sidebar/image1.png',
                      height: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Mcolor.white),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'View 3 items',
                    style: TextStyle(color: Mcolor.white),
                  ),
                ],
              ),
            ),
            Text(
              '1090',
              style: TextStyle(
                  color: Mcolor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Mcolor.lgreen,
        elevation: 0,
        leading: Image.asset('assets/login/group.png'),
        title: const Text(
          'PLANTIFY',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height * 0.50,
                  child: const Image(
                      image: AssetImage(
                    'assets/viewscreen/img.png',
                  )),
                ),
                Container(
                  height: size.height * 0.55,
                  // color: Colors.grey,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Air Purifier',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: size.width * 0.06,
                              ),
                              Image.asset('assets/dashboard/foot.png'),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            height: size.height * 0.03,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Mcolor.green,
                                  size: 20,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(color: Mcolor.green),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        widget.data.name.toString(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      const Text('PRICE'),
                      const Text(
                        '350',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      const Text('SIZE'),
                      const Text(
                        '5"',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 25),
                        child: const Image(
                            image: AssetImage(
                          'assets/dashboard/emoji.png',
                        )),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        height: size.height * 0.06,
                        width: size.width * 0.14,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 40,
                        ),
                      ),
                      Image.asset(
                        widget.data.image.toString(),
                        height: 250,
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Overview',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/viewscreen/sunlight3.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '250ml',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Mcolor.green),
                              ),
                              const Text(
                                'Water',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/viewscreen/sunlight3.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '250ml',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Mcolor.green),
                              ),
                              const Text(
                                'Water',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/viewscreen/sunlight3.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '250ml',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Mcolor.green),
                              ),
                              const Text(
                                'Water',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  const Text(
                    'Plant Bio',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  const Text(
                      'No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.'),
                  SizedBox(
                    height: size.height * 0.2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dashboardModel.images.length,
                        itemBuilder: (context, i) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red)),
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                  dashboardModel.images[i].image.toString()),
                            )),
                  ),
                  const Text(
                    'Similar Plants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, i) => ContainerTile()),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    color: Mcolor.yellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'That very plant?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26),
                            ),
                            Text(
                              'Just Scan and the AI \nwill know exactly',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Mcolor.dgreen)),
                              child: Text(
                                'Scan Now',
                                style: TextStyle(
                                    color: Mcolor.dgreen,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Image.asset(
                          'assets/viewscreen/tilepic.png',
                        ),
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
