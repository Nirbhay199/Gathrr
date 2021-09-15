// ignore_for_file: camel_case_types, file_names, deprecated_member_use
import 'package:demo2/Constant/Colors.dart';
import 'package:flutter/material.dart';

import 'Filter.dart';
import 'HomeDetails.dart';
import 'new.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class Trending extends StatefulWidget {
  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  TextEditingController searchController = TextEditingController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              'Trending Events',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            // elevation: 20.0,

            // shape: const CircularNotchedRectangle(),
            child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Image.asset(
                  'assets/icons/Path 75.png',
                ),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: Image.asset('assets/icons/Path 76.png'),
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                    // ignore: avoid_print,
                    print("$currentIndex");
                  });
                },
              ),
              Stack(
                children: [
                  IconButton(
                    color: CustomColors.icon,
                    iconSize: 76.0,
                    padding: const EdgeInsets.only(bottom: 20.0),
                    icon: const Icon(Icons.circle),
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                        // ignore: avoid_print
                        print("$currentIndex");
                      });
                    },
                  ),
                  Positioned(
                      top: 18,
                      left: 36,
                      child: Container(
                        height: 40,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                      )),
                  Positioned(
                      top: 36,
                      left: 18,
                      child: Container(
                        height: 4,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                      )),
                ],
              ),
              IconButton(
                icon: Image.asset('assets/icons/Group 227.png'),
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                    // ignore: avoid_print
                    print("$currentIndex");
                  });
                },
              ),
              IconButton(
                icon: Image.asset('assets/icons/Group 225.png'),
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                    // ignore: avoid_print
                    print("$currentIndex");
                  });
                },
              )
            ],
          ),
        )),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                right: 40.0, left: 40, bottom: 20, top: 20),
            child: Container(
              height: 63,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 0.8,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 25),
                    child: Image.asset(
                      'assets/Path 78.png',
                      height: 25,
                      width: 25,
                      color: Colors.black54,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 25),
                      child: TextFormField(
                        style: const TextStyle(fontSize: 18),
                        controller: searchController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Find Event",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, bottom: 10.0, right: 25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const Filter()));
                      },
                      child: Image.asset(
                        'assets/Group 236.png',
                        height: 25,
                        width: 25,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.1,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Padding(
              padding: const EdgeInsets.only(bottom:  18.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // ignore: prefer_const_constructors
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => HomeDetails()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              bottom: 8,
                              left: 8,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.1,
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(
                                      1.0,
                                      1.0,
                                    ),
                                    blurRadius: 2.0,
                                    spreadRadius: 0.8,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.1,
                                          height: 200,
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                            image: AssetImage(
                                                'assets/window.jpeg'),
                                            fit: BoxFit.fitWidth,
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 50,
                                            child: const Text(
                                              'OPEN',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: Colors.teal),
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(
                                                    1.0,
                                                    1.0,
                                                  ),
                                                  blurRadius: 2.0,
                                                  spreadRadius: 0.8,
                                                ), //BoxShadow
                                                BoxShadow(
                                                  color: Colors.white,
                                                  offset: Offset(0.0, 0.0),
                                                  blurRadius: 0.0,
                                                  spreadRadius: 0.0,
                                                ), //BoxShadow
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 1,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 25,
                                              width: 50,
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.yellowAccent,
                                                  ),
                                                  Text(
                                                    '4.5',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: Colors.teal),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Colors.black26,
                                                    offset: Offset(
                                                      1.0,
                                                      1.0,
                                                    ),
                                                    blurRadius: 2.0,
                                                    spreadRadius: 0.8,
                                                  ), //BoxShadow
                                                  BoxShadow(
                                                    color: Colors.white,
                                                    offset: Offset(0.0, 0.0),
                                                    blurRadius: 0.0,
                                                    spreadRadius: 0.0,
                                                  ), //BoxShadow
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 8, left: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Pune Meetup',
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.023,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3.0,
                                                            bottom: 3.0,
                                                            right: 8,
                                                            left: 8),
                                                    child: Text(
                                                      'Paid',
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.013,
                                                          color: Colors.white),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffFF5673),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3.0,
                                                            bottom: 3.0,
                                                            right: 8,
                                                            left: 8),
                                                    child: Text(
                                                      '12 Km',
                                                      style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.013,
                                                          color: Colors.white),
                                                    ),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff848DFF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Stack(
                                                children: [
                                                  buildExpandedBox(
                                                    color: Colors.white,
                                                    children: [
                                                      buildStackedImages(),
                                                    ],
                                                  ),
                                                  const Positioned(
                                                      top: 8,
                                                      left: 65,
                                                      child: Text(
                                                        '+2',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 11),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12.0, bottom: 20),
                                      child: Text(
                                        "Bhau Institute, Shivajinagar, Pune",
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.015,
                                            color: const Color(0xff6E7FAA),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),),),);
  }
}

Widget buildExpandedBox({
  required List<Widget> children,
  required Color color,
}) =>
    Container(
      color: color,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: children,
        ),
      ),
    );

Widget buildStackedImages({
  TextDirection direction = TextDirection.ltr,
}) {
  const double size = 28;
  const double xShift = 9;
  final urlImages = [
    "assets/amirhossein-hasani-TLKRTRKXN3U-unsplash.jpg",
    "assets/luke-porter-PtfrMfx-X7o-unsplash.jpg",
    "assets/oladimeji-odunsi-n5aE6hOY6do-unsplash.jpg",
    "assets/sinval-carvalho-K4o9sLBFdPk-unsplash.jpg",
  ];

  final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

  return StackedWidgets(
    direction: direction,
    items: items,
    size: size,
    xShift: xShift,
  );
}

Widget buildImage(String urlImage) {
  const double borderSize = 2;

  return ClipOval(
    child: Container(
      padding: const EdgeInsets.all(borderSize),
      color: Colors.white,
      child: ClipOval(
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
