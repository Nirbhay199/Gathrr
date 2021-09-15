// ignore_for_file: camel_case_types, file_names, deprecated_member_use

import 'package:demo2/Homepage.dart';
import 'package:flutter/material.dart';

import 'Constant/Colors.dart';
// ignore: must_be_immutable
class Register extends StatefulWidget {
    TextEditingController nameController = TextEditingController();

   Register(this.nameController, { Key? key }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String nameController='Jeet' ;
  @override
  void initState() { 
    super.initState();
if (widget.nameController.text=='') {
  
} else {
    nameController=widget.nameController.text;

}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // ignore: unnecessary_null_comparison
             nameController==null?Text("Hi $nameController,\nWelcome to\nGathrr!",style: const TextStyle(
                        color: CustomColors.text,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                 ):Text("Hi $nameController,\nWelcome to\nGathrr!",style: const TextStyle(
                        color: CustomColors.text,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                 ),
                 const SizedBox(height: 50,),
                  const Text("Please turn on your GPS to find\nout better event suggestions\nnear you",style: TextStyle(
                        color: CustomColors.text,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                 ),
                 const SizedBox(height: 150,),
       Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width/1.7,
                        decoration: BoxDecoration(
                            color: CustomColors.button,
                
                    borderRadius:
                        BorderRadius.circular(15),
                
                        ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (builder)=>const HomePage()));
                      },
                      child: const Text(
                        "Tern On GPS",
                        style: TextStyle(
                            color: CustomColors.sendbutton,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
            
          ),
        ),
      ),
      
    );
  }
}