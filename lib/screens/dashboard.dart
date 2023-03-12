import 'package:flutter/material.dart';
import 'package:taskassiment/screens/viewitem_Screen.dart';

import '../compunent/dcontainer.dart';
import '../compunent/Mcolor.dart';
import '../models/dashboard_model.dart';

class DashBoard extends StatefulWidget {
  DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List names = [
    {'name': 'Top Pick'},
    {'name': 'Indoor'},
    {'name': 'Outdoor '},
    {'name': 'Seeds'},
    {'name': 'Top Pick'},
    {'name': 'Indoor'},
    {'name': 'Outdoor '},
    {'name': 'Seeds'},
  ];
  DashboardModel dashboardModel = DashboardModel();
  List<dataModel>? data;

  @override
  void initState() {
    super.initState();
    data = dashboardModel.images;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Image(
                              image: AssetImage('assets/login/group.png')),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          const Text(
                            'PLANTIFY',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.notifications_none),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          const Icon(Icons.menu),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: size.height * 0.30,
                    width: size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/dashboard/header.png'))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'There’s a Plant\nfor everyone',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                          'Get your 1st plant\n@ 40% off',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(32),
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1)),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              suffixIcon: const Icon(
                                Icons.document_scanner_outlined,
                                color: Colors.black,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Expanded(
                          child: Container(
                              height: size.height * 0.07,
                              width: size.width * 0.07,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Icon(Icons.settings)))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: names.length,
                        itemBuilder: (context, i) {
                          return Container(
                            padding: const EdgeInsets.all(12),
                            child: Text(names[i]['name']),
                          );
                        }),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: dashboardModel.images.length,
                      itemBuilder: (context, ind) {
                        return Dcontainer(data![ind]);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
