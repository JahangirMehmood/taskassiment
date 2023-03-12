import 'package:flutter/material.dart';

import '../compunent/Mcolor.dart';
import 'checkout.dart';

class AddtoCart extends StatefulWidget {
  const AddtoCart({Key? key}) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  int num = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  int num4 = 0;
  int num5 = 0;
  int num6 = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/login/group.png'),
        title: const Text(
          'PLANTIFY',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
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
                    MaterialPageRoute(builder: (context) => const Checkout()));
              },
              child: Text(
                'Checkout',
                style: TextStyle(
                    color: Mcolor.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Bag',
              style: TextStyle(
                  color: Mcolor.dgreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower2.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num > 0) {
                                              num--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num1++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num1.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num1 > 0) {
                                              num1--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower3.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num2++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num2.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num2 > 0) {
                                              num2--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower4.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num3++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num3.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num3 > 0) {
                                              num3--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower5.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num4++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num4.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num4 > 0) {
                                              num4--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower6.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num5++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num5.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num5 > 0) {
                                              num5--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/dashboard/flower2.png',
                            height: 60,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Watermelon Peperomia',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          num6++;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    num6.toString(),
                                    style: TextStyle(
                                        color: Mcolor.dgreen, fontSize: 16),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Mcolor.black)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (num6 > 0) {
                                              num6--;
                                            }
                                          });
                                        },
                                        child: const Icon(
                                          Icons.minimize,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    color: Mcolor.dgreen,
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Mcolor.dgreen,
                          ),
                          const Text('₹350')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/addtocart/van.png',
                height: 60,
              ),
              title: Row(
                children: [
                  const Text(
                    'Delivery',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 120,
                    child: LinearProgressIndicator(
                      value: 30,
                      color: Mcolor.dgreen,
                      // backgroundColor: Mcolor.lgreen,
                    ),
                  ),
                ],
              ),
              trailing: Column(
                children: const [
                  Text(
                    '80',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: const Text(
                'Order above ₹1200 to get \nfree delivery Shop for more ₹190',
              ),
            ),
            // Row(
            //   children: [
            //     Image.asset(
            //       'assets/addtocart/van.png',
            //       height: 60,
            //     ),
            //     Text(
            //       'Apply Coupon',
            //       style: TextStyle(fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // )
            ListTile(
              leading: Image.asset('assets/addtocart/van.png'),
              title: const Text(
                'Apply Coupon',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: SizedBox(
                width: 120,
                child: LinearProgressIndicator(
                  value: 60,
                  color: Mcolor.dgreen,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    '1090',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
