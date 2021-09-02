// ignore_for_file: file_names, deprecated_member_use
import 'package:demo2/Constant/Colors.dart';
import 'package:demo2/Sign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'ForgetPassword.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passward = TextEditingController();
  GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();

  String? validationpassword(value) {
    if (value.isEmpty) {
      return null;
    } else if (value.length < 6) {
      return 'Should Be Atleast 6 Characters ';
    } else if (value.length > 10) {
      return 'Should Not Be More Then 10 Characters ';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(
          children: [
            Center(
                child: Image.asset(
              'assets/Group 372.png',
              scale: 2,
            )),
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Center(
                  child: Image.asset(
                'assets/gathrr.png',
                scale: 2,
              )),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formkey1,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: CustomColors.textfeild,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 25),
                child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Email",
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                          // fontFamily:'JosefinSans',
                      
                          color: CustomColors.text,
                          fontSize: 18,
                          ),
                    ),
                    validator: EmailValidator(
                      errorText: 'Enter a valid email address',
                    )),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formkey2,
          child: Padding(
            padding: const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
            child: Container(
              height: 85,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: CustomColors.textfeild,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 18.0, bottom: 18.0, left: 25),
                child: TextFormField(
                  controller: passward,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    hintText: "password",
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(color: CustomColors.text, fontSize: 18,
                          fontFamily:'JosefinSans',
                        
                        ),
                  ),
                  validator: validationpassword,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(
                  text: '',
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Forgot Password ?',
                        style: const TextStyle(
                          color: CustomColors.text,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const passwardforgot()));
                            });
                          }),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        FlatButton(
          onPressed: () {},
          child: const Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          color: CustomColors.button,
          padding:
              const EdgeInsets.only(left: 150, right: 150, top: 20, bottom: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        const SizedBox(
          height: 15,
        ),
        RichText(
          text: TextSpan(
            text: " Don't have Account ?\t",
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'Register',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const sign()));
                    },
                  style: const TextStyle(
                    color: CustomColors.text,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
