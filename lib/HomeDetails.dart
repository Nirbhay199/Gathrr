// ignore_for_file: camel_case_types, file_names, deprecated_member_use
import 'dart:ui';

import 'package:demo2/Constant/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Rating .dart';

// ignore: must_be_immutable
class HomeDetails extends StatelessWidget {
  final double _sigmaX = 0.0; // from 0-10
  final double _sigmaY = 0.0; // from 0-10
  final double _opacity = 0.6;

  const HomeDetails({Key? key}) : super(key: key); // from 0-1.0
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.white,
  title:const Center(
    child:  Text(
'Trending Events',
style: TextStyle(fontSize: 25, color: Colors.black  ,fontWeight: FontWeight.w600),
            ),
  ),
leading: IconButton(onPressed:(){
Navigator.pop(context);
},
icon:                 const    Icon(Icons.arrow_back_ios),
color: Colors.black,
),
actions: [      IconButton(color: Colors.black ,
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                  ),
                  IconButton(color: Colors.black ,
                    iconSize: 30,
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_outlined),
                  ),
                ],
  
),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>const Rating()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.070,
          decoration:   BoxDecoration(
gradient:
    LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xffFF5871).withOpacity(0.7),
          const Color(0xffFF8C48).withOpacity(0.7),
        ]),
              borderRadius:  const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child:  Center(
              child: Text('Check-In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize:MediaQuery.of(context).size.height*0.025,
                  ))),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            
            Stack(

              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/window.jpeg'
                                                  ),
                    fit: BoxFit.fitWidth,
                  )),
                ),
                Positioned(
                  top: 200,
                  left: 60,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black.withOpacity(_opacity),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0,left: 8),
                                child: Image.asset(
                                  "assets/Icon awesome-check-circle.png",
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(right: 8.0,left:5),
                                child: Text(
                                  '+91 212-673-3754',
                                  style: TextStyle(
                                                      fontSize:     MediaQuery.of(context).size.height*0.015,

                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 28,
                            width: 1,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/Group 248.png",
                                  height: 25,
                                  width: 25,
                                ),
                                 Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8.0, left: 8),
                                  child: Text(
                                    'Direction',
                                    style: TextStyle(
                                                      fontSize:     MediaQuery.of(context).size.height*0.015,

                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 8, left: 20),
              child: Row(
                children: [
                   Text(
                    'Haapy Bones',
                    style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.025
, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 20,
                      width: 50,
                      child: const Center(
                          child: Text(
                        'Paid',
                        style: TextStyle(color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                          color: const Color(0xffFF5673),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                    child: Container(
                      child: const Center(
                          child: Text(
                        '12 Km',
                        style: TextStyle(color: Colors.white),
                      )),
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff848DFF),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                "394 Broome St, New York, NY 10013, USA",
                style: TextStyle(
                    fontSize:      MediaQuery.of(context).size.height*0.015,

                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 22.0, top: 10),
              child: Text(
                "Active Now",
                style: TextStyle(
                    fontSize:      MediaQuery.of(context).size.height*0.019,

                    color: Colors.red,
                    fontWeight: FontWeight.w400),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 22.0, top: 7),
              child: Text(
                "9:30 am to 11:00 am",
                style: TextStyle(
                    fontSize:      MediaQuery.of(context).size.height*0.014,

                    color: Colors.red,
                    fontWeight: FontWeight.w400),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(left: 22.0, top: 7),
              child: Text(
                'Description',
                style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.022,
 fontWeight: FontWeight.w600),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 22.0, top: 7),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit, sed do eiusmod tempor incididunt ut labore\net dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut\naliquip ex ea commodo consequat.\n",
                style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.0165, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    'Attendees',
                    style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.025, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'See all(9)',
                    style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.018, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 18, right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               CircleAvatar(
                                  radius:      MediaQuery.of(context).size.height*0.025,
                                  backgroundImage: const AssetImage(
                                    'assets/jurica-koletic-7YVZYZeITc8-unsplash.jpg',
                                  )),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [
                                       Text(
                    'Elon Musk',
                    style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.020, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Founder of SpaceX',
                    style: TextStyle(fontSize:      MediaQuery.of(context).size.height*0.015, fontWeight: FontWeight.w400),
                  )
                                    ],
                                  ),
                              Container(
                                height: 30,
                                width: 80,
                                child: const Center(
                                    child: Text(
                                  'Follow',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                )),
                                decoration: BoxDecoration(
                                  color: CustomColors.button,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
