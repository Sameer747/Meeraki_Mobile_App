// ignore_for_file: unused_field, sized_box_for_whitespace, avoid_print, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/shared_preferences_helper.dart';
import 'package:meeraki_store/models/log_in_api_response.dart';
import 'package:meeraki_store/notifiers/login_provider.dart';
import 'package:meeraki_store/notifiers/sign_in_provider.dart';
import 'package:meeraki_store/notifiers/userdata_provider.dart';
import 'package:meeraki_store/screens/home_screen.dart';
import 'package:meeraki_store/screens/sign_up.dart';
import 'package:provider/provider.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  bool signIn = true;
  bool register = false;
  bool remember = false;
  var wrongEmailPassword = "";
  void wrongEmailPasswordFunc() {
    setState(() {
      wrongEmailPassword = "Please re-enter your password or username";
    });
  }

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
                  "Sign In",
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
                                    controller: email,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                    ))))),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Card(
                            elevation: 10,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 5),
                                child: TextFormField(
                                  controller: pass,
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
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 190,
                      child: CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: kPrimaryColor,
                        title: Text(
                          "Keep me login",
                          style: TextStyle(fontSize: width * (0.03 + 0.005)),
                        ),
                        value: remember,
                        onChanged: (val) {
                          setState(() {
                            remember = true;
                            remember = val!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(),
                    GestureDetector(
                      onTap: () {
                        //  Navigator.pushNamed(context, ForgotPassword.route);
                      },
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                wrongEmailPassword,
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () async {
                 SharedPreferencesHelper _pref = SharedPreferencesHelper();
                  context
                      .read<SignInSignUpDataProvider>()
                      .isGettingDataFromApiFunc();
                  UserLogin loginDetail = await context
                      .read<LoginProvider>()
                      .getLoginCredentials(email.text, pass.text);
                  if (loginDetail != null) {
                    if (remember == true) {
                      _pref.setUserLoginRememberInPrefrences(true);
                    }
                  }
                  if (loginDetail.accessToken != null) {
                    _pref.setUserPasswordInPrefrences(pass.text);
                    context.read<UserData>().userDetailSet(loginDetail);
                    context
                        .read<SignInSignUpDataProvider>()
                        .isGettingDataFromApiFunc();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
                  } else {
                    wrongEmailPasswordFunc();
                    print("Login Fail");
                    print(wrongEmailPassword);
                    context
                        .read<SignInSignUpDataProvider>()
                        .isGettingDataFromApiFunc();
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
                          "Sign In",
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
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignUp())),
                child: const Center(
                  child: Text("Create an account ?"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
