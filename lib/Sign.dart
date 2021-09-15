// ignore_for_file: camel_case_types, file_names, deprecated_member_use
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
  TextEditingController emailAddress = TextEditingController();
  TextEditingController passward = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmpassward = TextEditingController();

  GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey3 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

bool a=false;
 bool b=false;
 bool c=false; bool d=false;

  String? validationpassword(value) {
    if (value.isEmpty) {
      return null;
    } else if (value.length < 6) {
      return 'Should Be Atleast 6 Characters ';
    } else if (value.length > 10) {
      return 'Should Not Be More Then 10 Characters ';
    } else {a=true;
      return null;
    }
  }
  bool validateEmail(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  // ignore: unnecessary_new
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

 bool nextScreen(value1,value2,value3,value4){
 if (!value1.isEmpty&&!value2.isEmpty&&!value3.isEmpty&&!value4.isEmpty) {
      // ignore: unrelated_type_equality_checks
      d=true;
 b=validateEmail(value1);     
validationpassword(value2); 
validationConfirmpassword(value3); 
return (a&&b&&c&&d);
    } else{

      return false;
    }
}

  String? validationConfirmpassword(value) {
    if (value.isEmpty) {
      return null;
    } else if (value != passward.text) {
      return 'enter the right passward ';
    } else if (value == passward.text) {
      c=true;
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
            padding: const EdgeInsets.only(top: 55),
            // ignore: duplicate_ignore
            child: Column(children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: CustomColors.button,
                    maxRadius: 80,
                    child: CircleAvatar(
                      backgroundColor: CustomColors.sendbutton,
                      maxRadius: 79,
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
                height: 20,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 25),
                      child: TextFormField( style:  const TextStyle(
                                 fontSize: 18),
                       
                        maxLength: 10,
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          counterText: '',
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
              ),const SizedBox(
                height: 6,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 25),
                      child: TextFormField(
                          controller: emailAddress,
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
              ),const SizedBox(
                height: 6,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey2,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 25),
                      child: TextFormField(
                          obscureText: true,
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
                height: 6,
              ),
              Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: formkey3,
                child: Padding(
                  padding:
                      const EdgeInsets.only(right: 40.0, left: 40, bottom: 20),
                  child: Container(
                    height: 63,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: CustomColors.textfeild,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 25),
                      child: TextFormField(
                          obscureText: true,
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
                height: 20,
              ),
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
                      child:FlatButton(
                  onPressed: () {
                if (nextScreen(emailAddress.text, passward.text,confirmpassward.text,nameController.text)) {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  Register(nameController)));
                } else {
                      
                }    
                },              
                    child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.white,
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
              ), const SizedBox(
                height: 40,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
