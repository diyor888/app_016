import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.width * 0.05,
            ),
            child: Image(
              image: AssetImage("assets/images/img_9.png"),
              fit: BoxFit.cover,
            ),
          ),
          Divider(
            color: Colors.white54,
            height: 1,
          ),
          ListTile(
            title: Text(
              'Macbook',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              'Iphone',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              'IPad',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              'IWatch',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              'AirPods',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
