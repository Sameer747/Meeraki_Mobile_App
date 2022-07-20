// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contact Us"),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Text(
                "Contact Us",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryLightColor),
              ),
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(end: 250, start: 30),
              width: 350,
              child: Divider(
                thickness: 3,
                color: kPrimaryLightColor,
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Full Name',
                        hintText: 'Enter Your Full Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter Your email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: phone,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone Number',
                        hintText: 'Enter Your Phone Number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: message,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Message',
                        hintText: 'Enter Your Message',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: const Text(
                        "- For order status inquiry, please click here\n\n"
                        "- To cancel and return ordered items, please log-in with your account here and open a ticket.\n\n"
                        "- For other concerns, feel free to send us a message or contact us on below details:\n\n",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(end: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text(
                      'EMAIL',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          color: kPrimaryLightColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(start: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: const Text(
                        "support@meeraki.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(end: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text(
                      'CONTACT NO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          color: kPrimaryLightColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(start: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: const Text(
                        "+92 308 786 9696",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(end: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text(
                      'STORE HOURS',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          color: kPrimaryLightColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(start: 130),
                    width: 350,
                    child: const Divider(
                      thickness: 2,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13),
                    child: Container(
                      child: const Text(
                        "Monday-Saturday 9am - 10pm\n\n"
                        "Sunday 11am - 08pm",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
