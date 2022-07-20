// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class ReturnPolicy extends StatelessWidget {
  const ReturnPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Return Policy"),
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
                "Return Policy",
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
                        'RETURNS & EXCHANGES',
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
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        child: Text(
                          "WHAT IS YOUR RETURN OR EXCHANGE POLICY?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryLightColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Container(
                        child: const Text(
                          "You have 7 days from the date of delivery to claim for the return or exchange if:",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
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
                            "The product is damaged, stained, defected or\nincomplete.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "The product/s must be unused, in the original\npackaging with labels and protective stickers\nattached.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "The product received does not match the size\nordered.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "Products purchased directly from our website must\nbe returned to our Customer Services department\nfor a return and full refund to be made.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "This is only applicable for orders delivered within\nPakistan.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "Please be advised that inner-wear products are\nnonreturnable/exchangeable due to the nature of\nthe products and to maintain hygiene standards.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
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
                            "Exchanges and refunds during a sale or on a\ndiscounted product are ONLY applicable if the\nproduct received does not match the product\nyou have ordered.",
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
                        "HOW DO I APPLY FOR THE RETURN?",
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
                        Container(
                          child: const Text(
                            "To return an item, please email us at \nsupport@meeraki.com with the return reason and\norder details.",
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
                            "Once our customer support team approves the\nreturn you will be requested to send the parcel\nto Customer Service Department.",
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
                            "Please note that you are responsible for the cost\nof returning the items to us.",
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
                        "HOW DO I APPLY FOR THE RETURN?",
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
                        Container(
                          child: const Text(
                            "We aim to process all returns with 10-15 working\ndays of receipt.",
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
                            "During busy periods please allow up to 15 working\ndays for your return to be processed",
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
                        "WHAT IS YOUR SIZE EXCHANGE POLICY?",
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
                        Container(
                          child: const Text(
                            "In the event you are unsatisfied with the size you\npurchase and would like to receive a different size,\nyou are most welcome to send back your purchase\nback to Customer Service Department by\ncontacting us via email at support@meeraki.com\nwithin 10 days of the delivery date.",
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
                            "The products must be unused, in the original\npackaging with labels and protective stickers\nattached.",
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
                            "This is only applicable for orders delivered\nwithin Pakistan.",
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
                        "DO YOU OFFER REFUND?",
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
                        Container(
                          child: const Text(
                            "Unfortunately, we don't offer any refunds however\nin the case where we won't be able to offer an\nexchange or any solution, we may offer a refund.",
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
                            "In the case of REFUND shipping and handling\ncharges will not be refunded.",
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
                            "The minimum period for processing refund is\n7-10 working days depending on the mode of\npayment.",
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
                        "RETURNS: OUR ADDITIONAL POLICY",
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
                        "RETURNS: SALE & DISCOUNTED ORDERS",
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
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Container(
                        child: const Text(
                          "Exchanges and refunds during a sale or on a discounted product are ONLY applicable if the product received does not match the product you have ordered.",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
