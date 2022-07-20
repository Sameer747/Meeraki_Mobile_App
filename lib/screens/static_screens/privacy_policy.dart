// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../config/color_scheme.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Privacy Policy"),
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
                "Privacy Policy",
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
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    child: const Text(
                      "Your privacy is important to us. It is Meeraki policy to respect your privacy regarding any information we may collect from you across our website, http://www.meeraki.com/, and other sites we own and operate.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
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
                        'THE INFORMATION WE MAY COLLECT',
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
                          "We may collect and process the following types of personal information:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryLightColor,
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
                            "Personal contact details such as name, title,\naddress, email address and telephone number\nas part of orders & account signup.",
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
                            "Details of purchases and transactions",
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
                            "Information submitted as part of a survey",
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
                            "Records of correspondence with you by telephone,\nemail, live chat, social media or otherwise",
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
                            "Details of your visits to the website,"
                            "and information\nabout how your device has interacted with our\nwebsite, including search and browsing history,\nthe pages accessed, and links clicked.",
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
                            "Information collected automatically from your\ndevice, including IP address, device type, operating\nsystem, unique device identification numbers,\nbrowser-type, broad geographic location (e.g.\ncountry or city-level location) and other\ntechnical information",
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
                        "HOW YOUR DATA IS COLLECTED",
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
                          "We collect data from you when you register an account with us, subscribe to marketing communications from us, submit inquiries to us and/or purchase from us. We also collect information that you provide voluntarily to our customer services team, whether in writing, by telephone, email or live chat. We also collect some information automatically using cookies to improve the shopping experience. By using our website you agree that we can place these types of cookies on your device and access them when you visit the site in the future.",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "USE OF DATA & INFORMATION",
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
                          "We may collect, hold, use and disclose information for the following purposes and personal information will not be further processed in a manner that is incompatible with these purposes:",
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
                            "To enable you to customize or personalize\nyour experience of our website",
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
                            "To process any transactional or ongoing payments",
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
                            "To fulfill any orders placed with us",
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
                            "To process refunds",
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
                            "To create an account for you",
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
                            "To contact and communicate with you",
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
                            "For analytics, market research, and business\ndevelopment, including to operate and improve\nour website,associated applications and\nassociated social media platforms.",
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
                            "To send you marketing communications such as\nnewsletters and catalogues or provide you with\ninformation about our products, offers or services\nthat you request from us, or which we believe\nmay be of interest you. (Please note you can\nopt out of these at any time: please see ‘Your\nrights in connection with your data’)",
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
                            "To store information about your preferences to\nallow us to customize our website and marketing\ncommunications according to your interests",
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
                            "For internal record keeping and administrative\npurposes",
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
                            "To notify you about changes to our service",
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
                            "To obtain and analyse your feedback as part of\ncustomer surveys",
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
                            "To handle any disputes which we may have with\nyou to comply with our legal obligations and\nresolve any disputes that we may have.",
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
                        "HOW WE SECURE YOUR DATA",
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
                          "We have put in place the necessary and appropriate safeguards and access controls to ensure the security, integrity, and privacy of the information you provide us with no payment details are stored on our website. we receive encrypted information needed to verify and authorize your payment and to process your order.",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "WHO WE MAY SHARE YOUR DATA WITH",
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
                          "We may share some of your data with, or obtain personal information from, the following third parties:",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Service providers",
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
                          "Third party service providers for the purpose of enabling them to provide their services, including (without limitation) IT service providers, data storage, web hosting, and server providers, debt collectors, maintenance or problem-solving providers, marketing or advertising providers, professional advisors, and payment systems operators; sponsors or promoters of any competition we run.\n\n"
                          "Third parties, including agents or sub-contractors, who assist us in providing information, products, services or direct marketing to you; and third parties to collect and process data.",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Police or other regulatory or government authority",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: 'bold',
                              fontWeight: FontWeight.bold,
                              color: kPrimaryLightColor),
                        ),
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
                          "Courts, tribunals, regulatory authorities, and law enforcement officers, as required by law, in connection with any actual or prospective legal proceedings, or in order to establish, exercise or defend our legal rights",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "YOUR RIGHTS IN CONNECTION WITH YOUR DATA",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        "Choice and consent:",
                        textAlign: TextAlign.start,
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
                          "By providing personal information to us, you consent to us collecting, holding, using and disclosing your personal information in accordance with this privacy policy. If you are under 16 years of age, you must have and warrant to the extent permitted by law to us, that you have your parent or legal guardian’s permission to access and use the website and they (your parents or guardian) have consented to you providing us with your personal information. You do not have to provide personal information to us, however, if you do not, it may affect your use of this website or the products and/or services offered on or through it.",
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
                      child: Text(
                        "Information from third parties:",
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
                          "If we receive personal information about you from a third party, we will protect it as set out in this privacy policy. If you are a third party providing personal information about somebody else, you represent and warrant that you have such person’s consent to provide the personal information to us.",
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
                      child: Text(
                        "Restrict:",
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
                          "You may choose to restrict the collection or use of your personal information. If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by contacting us using the details below. If you ask us to restrict or limit how we process your personal information, we will let you know how the restriction affects your use of our website or products and services.",
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
                      child: Text(
                        "Correction:",
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
                          "If you believe that any information, we hold about you is inaccurate, out of date, incomplete, irrelevant or misleading, please contact us using the details below. We will take reasonable steps to correct any information found to be inaccurate, incomplete, misleading or out of date. Notification of data breaches: We will comply with laws applicable to us in respect of any data breach.",
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
                      child: Text(
                        "Complaints:",
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
                          "If you believe that we have breached a relevant data protection law and wish to make a complaint, please contact us using the details below and provide us with full details of the alleged breach. We will promptly investigate your complaint and respond to you, in writing, setting out the outcome of our investigation and the steps we will take to deal with your complaint.",
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
                      child: Text(
                        "CHANGES TO THIS POLICY",
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
                          "At our discretion, we may change our privacy policy to reflect current acceptable practices. We will take reasonable steps to let users know about changes via our website. Your continued use of this site after any changes to this policy will be regarded as acceptance of our practices around privacy and personal information. If we make a significant change to this privacy policy, for example changing a lawful basis on which we process your personal information, we will ask you to reconsent to the amended privacy policy.",
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
                      child: Divider(
                        thickness: 2,
                        color: kPrimaryLightColor,
                      ),
                    ),
                    Container(
                      child: Text(
                        "CONTACT DETAILS",
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
                          "For any questions about this policy or information requests please email support@meeraki.com",
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
