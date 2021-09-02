// ignore_for_file: camel_case_types, file_names
import 'package:demo2/Constant/Colors.dart';
import 'package:demo2/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'Register.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passward = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmpassward = TextEditingController();

  GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey3 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

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

  String? validationConfirmpassword(value) {
    if (value.isEmpty) {
      return null;
    } else if (value != passward.text) {
      return 'enter the right passward ';
    } else if (value == passward.text) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: CustomColors.button,
                    maxRadius: 101,
                    child: CircleAvatar(
                      backgroundColor: CustomColors.sendbutton,
                      maxRadius: 100,
                      child: Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    right: 1,
                    child: Container(
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: CustomColors.icon,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18.0, left: 25),
                      child: TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Name",
                          icon: Icon(
                            Icons.person,
                            color: CustomColors.icon,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: CustomColors.text, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18.0, left: 25),
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
                                color: CustomColors.text, fontSize: 20),
                          ),
                          validator: EmailValidator(
                            errorText: 'Enter a valid email address',
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18.0, left: 25),
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
                              TextStyle(color: CustomColors.text, fontSize: 20),
                        ),
                        validator: validationpassword,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey3,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 85,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 18.0, bottom: 18.0, left: 25),
                      child: TextFormField(
                        controller: confirmpassward,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: const InputDecoration(
                          hintText: "Confirm Password",
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: CustomColors.text, fontSize: 20),
                        ),
                        validator: validationConfirmpassword,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()));
                          
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                color: CustomColors.button,
                padding: const EdgeInsets.only(
                    left: 150, right: 150, top: 20, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 40,
              ),

              RichText(
                text: TextSpan(
                  text: " Already have a Account ?\t",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                        style: const TextStyle(
                          color: CustomColors.text,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
