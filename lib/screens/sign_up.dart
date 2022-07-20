// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/notifiers/sign_in_provider.dart';
import 'package:meeraki_store/notifiers/signup_provider.dart';
import 'package:meeraki_store/screens/sign.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool signIn = true;
  bool register = false;
  bool remember = false;
  var wrongEmailPassword = "";
  void wrongEmailPasswordFunc() {
    setState(() {
      wrongEmailPassword = "Please re-enter your password or username";
    });
  }

  TextEditingController fullname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confrmpass = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.navigate_before,
              color: Colors.black,
              size: 45,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  width: width - 200,
                  child: Image.asset("assets/logo.png"),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    controller: fullname,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Full Name',
                                    ))))),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    controller: email,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                    ))))),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                    controller: phone,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        //labelText: 'Password',
                                        hintText: "Phone Number"))))),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  controller: password,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade600),
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        context
                                                .watch<
                                                    SignInSignUpDataProvider>()
                                                .registerPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<SignInSignUpDataProvider>()
                                            .registerPasswordVisibleFunction();
                                      },
                                    ),
                                  ),
                                  obscureText: !context
                                          .watch<SignInSignUpDataProvider>()
                                          .registerPasswordVisible
                                      ? true
                                      : false,
                                )))),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  controller: confrmpass,
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    hintStyle:
                                        TextStyle(color: Colors.grey.shade600),
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        context
                                                .watch<
                                                    SignInSignUpDataProvider>()
                                                .registerPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color:
                                            Theme.of(context).primaryColorDark,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<SignInSignUpDataProvider>()
                                            .registerPasswordVisibleFunction();
                                      },
                                    ),
                                  ),
                                  obscureText: !context
                                          .watch<SignInSignUpDataProvider>()
                                          .registerPasswordVisible
                                      ? true
                                      : false,
                                )))),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (password.text != confrmpass.text) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Please input same password")));
                  } else {
                    context.read<UserSignUp>().getuserSignUp(fullname.text,
                        email.text, phone.text, password.text, confrmpass.text);
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignScreen()));
                  }
                },
                child: Center(
                  child: Card(
                    child: Container(
                      height: width - 330,
                      width: width - 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
