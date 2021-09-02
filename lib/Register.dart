// ignore_for_file: camel_case_types, file_names, deprecated_member_use

import 'package:flutter/material.dart';

import 'Constant/Colors.dart';
class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text("Hi Jeet,\nWelcome to\nGathrr!",style: TextStyle(
                      color: CustomColors.text,
                      fontSize: 55,
                      fontWeight: FontWeight.bold),
               ),
               const SizedBox(height: 50,),
                const Text("Please turn on your GPS to find\nout better event suggestions\nnear you",style: TextStyle(
                      color: CustomColors.text,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
               ),
               const SizedBox(height: 150,),

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: FlatButton(
                onPressed: () {},
                child: const Text(
                  "Tern On GPS",
                  style: TextStyle(
                      color: CustomColors.sendbutton,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                color: CustomColors.button,
                padding: const EdgeInsets.only(
                    left: 150, right: 150, top: 20, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}