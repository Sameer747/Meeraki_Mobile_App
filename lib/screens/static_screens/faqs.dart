// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class FAQS extends StatelessWidget {
  const FAQS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("FAQS"),
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
                "FAQS",
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
                      'What are the benefits of creating an Account?',
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
                        "There are several benefits of creating an Account including:\n\n"
                        "Your billing / shipping information will be saved, and checkout will be faster.\n"
                        "You will be able to view your previous Order history.\n"
                        "Account holders will remain up to date with latest promotions & newsletters.",
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
                      'I have forgotten my password',
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
                        "Click on (put the link) enter your email address and click on ‘Reset My Password\n\n"
                        "Click on the link you receive on your email address and enter your new password.",
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
                      'How do I get sale or promotional messages from meeraki?',
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
                        "To receive promotional messages or emails, please create an account (put the link)\n\n"
                        "Orders\n\n"
                        "1. How can I place an Order?\n\n"
                        "Select your products from the khaadi.com website and click Add to Bag\n\n"
                        "Once you have added all your desired items to your Shopping Bag, follow these instructions:\n\n"
                        "If you are a registered customer\n\n"
                        "1.Make sure you are signed in using the (put the link) link\n\n"
                        "2.Click on the ‘Shopping Bag’ button and proceed to checkout.\n\n"
                        "3.Select address and click Next\n\n"
                        "4.Select payment method\n\n"
                        "If you are not a registered customer,\n\n"
                        "1.Click on the ‘Shopping Bag’ button and proceed to checkou\n\n"
                        "2.Enter all your required shipping and billing information\n\n"
                        "2. How do I search for an item on the website?\n\n\n"
                        "Click on the search icon placed on the top right of the website.\n\n"
                        "Enter the item code you are looking for and press Enter on your keyboard.\n\n\n"
                        "3. Is there a sizing chart available?\n\n"
                        "Size chart is available on the website for all the products and will be made available for the rest of the regional websites as well.",
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
                      'How will I know if meeraki has received my Order?',
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
                        "The Sales Order Summary emailed to you is a confirmation that your Order has been received. If you do not get this email, please contact (put the link)",
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
                      'Can I modify an Order after placing it',
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
                        "Unfortunately, it is not possible to make changes to an Order once the Order has been placed. However, if your Order has not been Processed, you can cancel it and place a new Order. Click on the (put the link) link to check the status of your Order. ",
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
                      'How can I check the status of my Order?',
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
                        "You click on the (put the link) link to track the status of your Order.",
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
                      'How do I cancel my order?',
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
                        "To cancel any order customers are advised to contact us via email at (put the link) or on(put the link) . We urge customers to request cancellation as soon as possible. We can process cancellation for items which are yet to dispatch.\n\n"
                        "If an item has been dispatched, then the cancellation cannot be processed. All cancellation requests will be assessed by a customer service representative prior to processing the request. Email: (put the link),\n\n"
                        "Only the orders that are yet to be dispatched can be cancelled",
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
