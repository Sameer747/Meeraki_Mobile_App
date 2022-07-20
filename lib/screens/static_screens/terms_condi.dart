// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Terms & Conditions"),
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
                "Terms & Conditions",
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
                      'In General',
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
                        "Access to and use of this Website and the products and services available through this Website (collectively, the “Services”) are subject to the following terms, conditions and notices (the “Terms of Service”). By using the Services, you are agreeing to all of the Terms of Service, as may be updated by us from time to time. You should check this page regularly to take notice of any changes we may have made to the Terms of Service.\n\n"
                        "Access to this Website is permitted on a temporary basis, and we reserve the right to withdraw or amend the Services without notice. We will not be liable if for any reason this Website is unavailable at any time or for any period. From time to time, we may restrict access to some parts or all of this Website.\n\n"
                        "This Website also contains links to other websites which are not operated by MEERAKI (the “Linked Sites”). MEERAKI has no control over the Linked Sites and accepts no responsibility for them or for any loss or damage that may arise from your use of them. Your use of the Linked Sites will be subject to the terms of use and service contained within each such site.",
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
                      'Privacy Policy',
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
                        "Our Privacy Policy, incorporated by reference in these Terms of Service, sets out how we will use personal information you provide to us. By using this Website, you agree to be bound by the Privacy Policy, and warrant that all data provided by you is accurate.",
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
                      'Intellectual Property, Software and Content',
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
                        "The intellectual property rights in all software and content made available to you on or through this Website remains the property of MEERAKI or its licensors and are protected by copyright laws and treaties around the world. All such rights are reserved by MEERAKI and its licensors. You may store, print, and display the content supplied solely for your own personal use. You are not permitted to publish, manipulate, distribute, or otherwise reproduce, in any format, any of the content or copies of the content supplied to you or which appears on this Website, nor may you use any such content in connection with any business or commercial enterprise.\n\n"
                        "You shall not modify, translate, reverse engineer, decompile, disassemble or create derivative works based on any software or accompanying documentation supplied by MEERAKI or its licensors. as MEERAKI are trademarks belonging to MEERAKI. No license or consent is granted to you to use these marks in any way, and you agree not to use these marks or any marks which are colourably similar.",
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
                      'Terms of Sale',
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
                        "By placing an order, you are offering to purchase a product on and subject to the following terms and conditions. All orders are subject to availability and confirmation of the order price.\n\n"
                        "Dispatch times may vary according to availability and any guarantees or representations made as to delivery times are limited and subject to any delays resulting from postal delays which we will not be responsible.\n\n"
                        "In order to contract with MEERAKI you must be 18 years of age or over and possess a valid credit or debit card issued by a bank acceptable to us.\n\n"
                        "MEERAKI retains the right to refuse any request made by you. If your order is accepted, we will inform you by email and we will confirm the identity of the party which you have contracted with. This will usually be MEERAKI or may in some cases be a third party. Where a contract is made with a third party MEERAKI is not acting as either agent or principal and the contract is made between yourself and that third party and will be subject to the terms of sale which they supply you. When placing an order, you undertake that all details you provide to us are true and accurate, that you are an authorized user of the credit or debit card used to place your order and that there are sufficient funds to cover the cost of the goods. The cost of foreign products and services may fluctuate. All prices advertised are subject to such changes.",
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
                      'Our Contract',
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
                        "When you place an order, you will receive an acknowledgement e-mail confirming receipt of your order: this email will only be an acknowledgement and will not constitute acceptance of your order. A contract between us will not be formed until we send you confirmation by e-mail that the goods which you ordered have been dispatched to you.\n\n"
                        "Only those goods listed in the confirmation e-mail sent at the time of dispatch will be included in the contract formed.",
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
                      'Pricing and Availability',
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
                        "Whilst we try and ensure that all details, descriptions and prices which appear on this Website are accurate, errors may occur. If we discover an error in the price of any goods which you have ordered, we will inform you of this as soon as possible and give you the option of reconfirming your order at the correct price or cancelling it. If we are unable to contact you, we will treat the order as cancelled. If you cancel and you have already paid for the goods, you will receive a full refund.",
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
                      'Payment',
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
                        "Upon receiving your order, we carry out a standard pre-authorization check on your payment card to ensure there are sufficient funds to fulfil the transaction. Goods will not be dispatched until this pre-authorization check has been completed. Your card will be debited once the order has been accepted.",
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
                      'Discount Codes',
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
                        "Account discount codes – Discount codes may from time to time be offered to account holders; such codes may only be applied to purchases made through the account in respect of which the discount code was offered and registered.\n\n"
                        "These T&Cs relate to all MEERAKI promotions, competitions and discount codes (unless otherwise stated).\n\n"
                        "a. Only one promotion code can be used per order\n\n"
                        "b. Selected brand exclusions may apply\n\n"
                        "c. A promotion code can't be used after an order has been placed\n\n"
                        "e. Gift Vouchers\n\n"
                        "Ⅰ. We’re afraid we can’t accept any responsibility for stolen gift vouchers.\n\n"
                        "Ⅱ. We will not be able to exchange, refund or encash Gift Vouchers.\n\n"
                        "Ⅲ. If you are the purchaser, please double-check the delivery address you enter – it is your responsibility to do so and we’re afraid we can’t be held responsible if a gift voucher is used by someone other than your recipient if the delivery address entered is incorrect. In addition, we can’t take responsibility for any gift vouchers that are lost or used by someone other than your recipient after delivery. Make sure your recipient has received their gift voucher, as it is their responsibility to keep the voucher details safe.\n\n"
                        "IV. As you would expect, we reserve the right to vary these terms and conditions. The conditions of use relating to any discount code will be specified at the time of issue.",
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
                      'Disclaimer of Liability',
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
                        "The material displayed on this Website is provided without any guarantees, conditions or warranties as to its accuracy. Unless expressly stated to the contrary to the fullest extent permitted by law MEERAKI and its suppliers, content providers and advertisers hereby expressly exclude all conditions, warranties and other terms which might otherwise be implied by statute, common law or the law of equity and shall not be liable for any damages whatsoever, including but without limitation to any direct, indirect, special, consequential, punitive or incidental damages, or damages for loss of use, profits, data or other intangibles, damage to goodwill or reputation, or the cost of procurement of substitute goods and services, arising out of or related to the use, inability to use, performance or failures of this Website or the Linked Sites and any materials posted thereon, irrespective of whether such damages were foreseeable or arise in contract, tort, equity, restitution, by statute, at common law or otherwise. This does not affect MEERAKI liability for death or personal injury arising from its negligence, nor for fraudulent misrepresentation, misrepresentation as to a fundamental matter or any other liability which cannot be excluded or limited under applicable law.",
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
                      'Linking to this Website',
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
                        "You may link to our home page, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval, or endorsement on our part where none exists.\n\n"
                        "You may link to our home page, provided you do so in a way that is fair and legal and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval, or endorsement on our part where none exists.",
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
                      'Disclaimer as to ownership of trademarks, images of personalities and third-party copyright',
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
                        "Except where expressly stated to the contrary all persons (including their names and images), third party trademarks and images of third-party products, services and/or locations featured on this Website are in no way associated, linked or affiliated with MEERAKI and you should not rely on the existence of such a connection or affiliation. Any trademarks/names featured on this Website are owned by the respective trademark owners. Where a trademark or the brand name is referred to it is used solely to describe or identify the products and services and is in no way an assertion that such products or services are endorsed by or connected to MEERAKI.",
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
                      'Variation',
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
                        "MEERAKI shall have the right in its absolute discretion at any time and without notice to amend, remove or vary the Services and/or any page of this Website.",
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
                      'Invalidity',
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
                        "If any part of the Terms of Service is unenforceable (including any provision in which we exclude our liability to you) the enforceability of any other part of the Terms of Service will not be affected all other clauses remaining in full force and effect. So far as possible where any clause/sub-clause or part of a clause/sub-clause can be severed to render the remaining part valid, the clause shall be interpreted accordingly. Alternatively, you agree that the clause shall be rectified and interpreted in such a way that closely resembles the original meaning of the clause/sub-clause as is permitted by law.",
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
                      'Complaints',
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
                        "We operate a complaint handling procedure which we will use to try to resolve disputes when they first arise, please let us know if you have any complaints or comments at support@meeraki.com.",
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
                      'Waiver',
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
                        "If you breach these conditions and we take no action, we will still be entitled to use our rights and remedies in any other situation where you breach these conditions.",
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
                      'Governing Law and Jurisdiction',
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
                        "These terms and conditions are to be construed in accordance with the laws Pakistan and in the event of any dispute or claim associated with these terms and conditions, that dispute or claim shall be subject to the exclusive jurisdiction of the Courts of Pakistan.",
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
                      'Entire Agreement',
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
                        "The above Terms of Service (including the Privacy Policy, any other MEERAKI policies linked to herein, and where relevant the Community Guidelines) constitute the entire agreement of the parties and supersede any and all preceding and contemporaneous agreements between you and MEERAKI. Any waiver of any provision of the Terms of Service will be effective only if in writing and signed by a Management of MEERAKI.\n\n\n"
                        "*Terms & Conditions could change or vary upon MEERAKI without further notice.",
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
