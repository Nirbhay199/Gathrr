// ignore_for_file: file_names, deprecated_member_use, unnecessary_new
import 'package:demo2/Constant/Colors.dart';
import 'package:demo2/Register.dart';
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
  TextEditingController emailAddress = TextEditingController();
  TextEditingController passward = TextEditingController();
  GlobalKey<FormState> formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
 bool a=false;
 bool b=false;
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
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

 bool nextScreen(value1,value2){
 if (!value1.isEmpty&&!value2.isEmpty) {
      // ignore: unrelated_type_equality_checks
 b=validateEmail(value1);     
validationpassword(value2); 
return (a&&b);
    } else{

      return false;
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
         Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                
                children: [
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
                      height: 63,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: CustomColors.textfeild,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 25),
                        child: TextFormField( style:  const TextStyle(
                                color: Colors.black, fontSize: 18),
                       
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
                      height: 63,
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
                          obscureText: true,
                          cursorHeight: 10,
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
                                  fontSize: 15,
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
                  SizedBox(
                  height: MediaQuery.of(context).size.height*0.080,
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
                      child: FlatButton(
 onPressed: () {
                if (nextScreen(emailAddress.text, passward.text)) {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  Register(nameController)));
                } else {
                      
                }    
                },                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ),
            
                    )
              ],
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
                ), const SizedBox(
                  height: 40,
                ),
                ])
              ),
            ),
          ),],
      ),
    );
  }
}
