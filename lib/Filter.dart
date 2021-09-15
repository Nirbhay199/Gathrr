// ignore_for_file: camel_case_types, file_names, deprecated_member_use
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _press1 = true;
  bool _press2 = true;
  bool _press3 = true;
  bool _press4 = true;
  bool _press5 = true;
  bool _press6 = true;
  bool _press7 = true;
  bool _press8 = true;
  bool _press9 = true;
  bool _press10 = true;
  bool _press11 = true;
  bool _press12 = true;
  bool _press13 = true;
  bool _press14 = true;
  bool _press15 = true;
  bool _press16 = true;
  bool _press17 = true;
  bool _press18 = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
                        Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18.0, right: 15),
                      child: Text(
                        'Filter',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(right:  18.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset('assets/Group 255.png',color: Colors.black,height: 30,width: 30,)),
                  )
                  ],
                ),
              ),
            SizedBox(
              height: height * 0.05,
            ),
            const Center(
              child: Text(
                "Select Category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.035,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press1 = !_press1;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press1
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press1 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press1 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press2 = !_press2;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press2
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press2 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press2 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press3 = !_press3;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press3
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press3 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press3 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press4 = !_press4;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press4
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press4 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Casual",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press4 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press5 = !_press5;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press5
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press5 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Fun",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press5 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press6 = !_press6;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press6
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press6 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Adventure",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press6 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press7 = !_press7;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press7
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press7 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press7 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press8 = !_press8;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press8
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press8 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press8 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press9 = !_press9;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press9
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press9 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press9 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press10 = !_press10;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press10
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press10 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press10 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press11 = !_press11;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press11
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press11 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press11 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press12 = !_press12;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press12
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press12 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press12 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press13 = !_press13;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press13
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press13 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press13 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press14 = !_press14;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press14
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press14 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press14 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press15 = !_press15;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press15
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press15 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press15 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press16 = !_press16;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press16
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press16 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press16 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press17 = !_press17;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press17
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press17 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press17 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press18 = !_press18;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press18
                                ? [Colors.white, Colors.white10]
                                : [Colors.orange, Colors.redAccent]),
                        border: Border.all(
                            color: _press18 ? Colors.blueGrey : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                            fontSize: 19,
                            color: _press18 ? Colors.black : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Colors.deepPurpleAccent,
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 3),
              ],
            ),
            height: height * 0.078,
            
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                 GestureDetector(
                     onTap: (){
                      setState(() {
                          _press1 = true;
   _press2 = true;
   _press3 = true;
   _press4 = true;
   _press5 = true;
   _press6 = true;
   _press7 = true;
   _press8 = true;
   _press9 = true;
   _press10 = true;
   _press11 = true;
   _press12 = true;
   _press13 = true;
   _press14 = true;
   _press15 = true;
   _press16 = true;
   _press17 = true;
   _press18 = true;

                      });
        },
                   child: const Text(
                     "Reset",
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 20,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
                    Container(
                      width:1
                      ,height:70,
                      color: Colors.white,
                    ),
                   GestureDetector(
                       onTap: (){
          Navigator.pop(context);
        },
        
                     child: const Text(
                       "Apply",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                           fontWeight: FontWeight.bold),
                     ),
                   ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
