// ignore_for_file: file_names, deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:demo2/Constant/Colors.dart';

// ignore: camel_case_types
class passwardforgot extends StatefulWidget {
  const passwardforgot({Key? key}) : super(key: key);

  @override
  _passwardforgotState createState() => _passwardforgotState();
}

// ignore: camel_case_types
class _passwardforgotState extends State<passwardforgot> {
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      decoration: BoxDecoration(gradient: CustomColors.forgetpassword),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Center(
              child: Text(
            "Forget Password",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 80),
                child: Text(
                  '\t\tEnter your email and will send\nyou instruction on how to reset it ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300),
                ),
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
                      child: TextFormField(
                        style:  const TextStyle(
                                color: Colors.white, fontSize: 18),
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
                                color: Colors.white, fontSize: 20),
                          ),
                          validator: EmailValidator(
                            errorText: 'Enter a valid email address',
                          )),
                    ),
                  ),
                ),
              ),
             
              SizedBox(height: MediaQuery.of(context).size.height/2.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child:    Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.7,
                      decoration: BoxDecoration(
                          color: CustomColors.sendbutton,
              
                  borderRadius:
                      BorderRadius.circular(15),
              
                      ),
                    child: FlatButton(
                      onPressed: () {},
                      child: const Text(
                        "Send",
                        style: TextStyle(
                            color: CustomColors.text,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
