import 'package:app_016/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'Page3.dart';

class HomePage extends StatefulWidget {
  static const String id = "Home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Sidebar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            actions: [
               Container(
                  padding: EdgeInsets.only(right: 12, left: 12),
                  margin: EdgeInsets.only(top: 12,bottom: 12),
                  child: Center(
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.white38,
                  ),
                ),

            ],
            expandedHeight: MediaQuery.of(context).size.height * 0.38,
            backgroundColor: Colors.black,
            title: Text(
              'Apple Products',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                ),
                child: Container(
                  color: Colors.black,
                  child: Stack(
                    children: [
                       Container(
                         margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: AssetImage('assets/images/img.png'),
                            ),
                          ),
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                          Center(
                            child: Text(
                              'Lifestyle sale',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 36),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 50, right: 50),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Page4(
              img1: "assets/images/img_1.png", img2: "assets/images/img_2.png"),
          Page4(
              img1: "assets/images/img_3.png", img2: "assets/images/img_4.png"),
          Page4(
              img1: "assets/images/img_7.png", img2: "assets/images/img_8.png"),
          Page4(
              img1: "assets/images/img_5.png", img2: "assets/images/img_6.png"),
          Page4(
              img1: "assets/images/img_7.png", img2: "assets/images/img_8.png"),
        ],
      ),
    );
  }
}
