// ignore_for_file: camel_case_types, file_names, deprecated_member_use
import 'package:demo2/Constant/Colors.dart';
import 'package:flutter/material.dart';
class Rating extends StatefulWidget {
  const Rating({ Key? key }) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
                                           height: MediaQuery.of(context).size.height*0.070,
          decoration: const  BoxDecoration(
              color: CustomColors.button,
              borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child:  Center(
              child: Text('Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize:MediaQuery.of(context).size.height*0.025,
))),
        ),
      ),
    
      body:SafeArea(
        child: Column(
          children: [
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
                        'Review & Ratings',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w600,    
                            ),
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
          Padding(
            padding: const EdgeInsets.only(top:18.0,bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffEEF7FF),
                borderRadius: BorderRadius.circular(23),
              ),
              height: 80.0,
              width: 350.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     IconButton(icon:const Icon(Icons.star),
                     iconSize: 50,
                      onPressed: ()=>setState((){
                        _myColorOne=Colors.orange;
                       _myColorTwo=Colors.grey;
                        _myColorThree=Colors.grey;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                    }),color: _myColorOne,),
                     IconButton(icon:   const Icon(Icons.star),
                     iconSize: 50,

                      onPressed: ()=>setState((){
                        _myColorOne=Colors.orange;
                        _myColorTwo=Colors.orange;
                        _myColorThree=Colors.grey;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                    }),color: _myColorTwo,),
                     IconButton(
                       
                     iconSize: 50,
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.grey;
                      _myColorFive=Colors.grey;
                    }),color: _myColorThree,),
                     IconButton(
                     iconSize: 50,
                       
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.orange;
                      _myColorFive=Colors.grey;
                    }),color: _myColorFour,),
                     IconButton(
                     iconSize: 50,
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.orange;
                      _myColorFive=Colors.orange;
                    }),color: _myColorFive,),
                  ],

              ),
            ),
          ),
           const Text('Rate your experience',style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w400
           ),),
           
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: TextFormField(maxLines:10,
              
                decoration: const InputDecoration(
                  
                  hintText: 'Write your experience',
                  hintStyle: TextStyle(
fontWeight: FontWeight.w400
                  ),
                  border: OutlineInputBorder()
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}