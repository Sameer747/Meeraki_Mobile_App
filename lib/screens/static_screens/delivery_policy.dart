// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class DeliveryPolicy extends StatefulWidget {
  const DeliveryPolicy({Key? key}) : super(key: key);

  @override
  State<DeliveryPolicy> createState() => _DeliveryPolicyState();
}

class _DeliveryPolicyState extends State<DeliveryPolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Delivery Policy")),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsetsDirectional.only(start: 15),
              child: Text(
                "Delivery Policy",
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                        'DELIVERY TIME',
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "The estimated average delivery time (after\nthe order is dispatched) across Pakistan is 2\nto 5 working days for the major cities. For\nremote areas delivery can take longer.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "You are requested to be available on the provided\ncontact number so our team can reach you.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "Timely delivery is subjected to availability of the\narticles and order confirmation.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "During sale period, both order processing\nand delivery may take longer than usual.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(end: 130),
                      width: 350,
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "CANCELLATION POLICY",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              child: const Text(
                                "For cancellation of prepaid orders, please contact\nus within 24 hours after order placement.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "Once the Order is “in process”, it can no longer\nbe cancelled or refunded. PAYMENT THROUGH\nCARDS:",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "We aim to provide a safe and secure shopping\nexperience. However, In some instances, we\nmight need some form of payment verification\nor source to process the order, which will be\nrequested from the consignee through call or\nemail as per the bank's instructions to avoid\nany fraudulent or suspicious transactions.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "Meeraki reserves the right to cancel orders if the\npayment is declined by your authorized payment\ninstitution.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
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
                        'DELIVERY CHARGES',
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "Karachi: PKR 149.00/-",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: const Text(
                              "All over Pakistan except Karachi: PKR 199.00/-",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: const Text(
                          "We offer Free Delivery on orders above PKR 10,000/-.This offer is applied on orders from all over Pakistan.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
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
                        'TRACK YOUR ORDER',
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
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "Once your order is dispatched you will receive an\nemail/SMS with your order tracking number.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "You can track your order status on our website.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "If you don't get any tracking updates, please write\nto us at support@meeraki.com or open a ticket\nthrough your dashboard.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 13,
                        ),
                        const Icon(Icons.album),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: const Text(
                            "Meeraki cannot be held liable for late delivery\n/collection by third-party postal/courier companies.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(end: 130),
                      width: 350,
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "WANT TO AMEND YOUR ORDER?",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'bold',
                            fontWeight: FontWeight.bold,
                            color: kPrimaryLightColor),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsetsDirectional.only(start: 130),
                      width: 350,
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Container(
                        child: const Text(
                          "You can revise your order so that it's just the way you want it by calling our Customer Services team on 0308 786 9696 (9 am - 8 pm, PKT Mon-Sat, 12 am – 8 pm on Sundays) or emailing us at support@meeraki.com before order is processed. If the order hasn’t already been processed, we'll be happy to assist you.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
