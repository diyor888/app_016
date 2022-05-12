import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({required this.img1, required this.img2});
  final String img1;
  final String img2;

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  bool color1 = true;
  bool color2 = true;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image:  AssetImage(widget.img1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.001,
                            ),
                            child: IconButton(
                              splashColor: Colors.black,
                              onPressed: () {
                                setState(() {
                                  color1 = !color1;
                                });
                              },
                              icon: color1
                                  ? Icon(
                                      Icons.star_border_purple500_sharp,
                                      size: 30,
                                      color: Color(0xffffcd3c),
                                    )
                                  : Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Color(0xffffcd3c),
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: MediaQuery.of(context).size.width * 0.45,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image:  AssetImage(widget.img2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.001,
                            ),
                            child: IconButton(
                              splashColor: Colors.black,
                              onPressed: () {
                                setState(
                                  () {
                                    color2 = !color2;
                                  },
                                );
                              },
                              icon: color2
                                  ? Icon(
                                      Icons.star_border_purple500_sharp,
                                      size: 30,
                                      color: Color(0xffffcd3c),
                                    )
                                  : Icon(
                                      Icons.star,
                                      size: 30,
                                      color: Color(0xffffcd3c),
                                    ),
                            ),
                          ),
                        ],
                      )
                    ],
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
