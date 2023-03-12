import 'package:flutter/material.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  // final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _key,
      endDrawer: Drawer(),
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
          Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          }),
        ],
      ),
    );
  }
}
