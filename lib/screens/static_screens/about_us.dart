// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../config/color_scheme.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
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
                "About Us",
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
                      'Who Are We?',
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
                        "Meeraki is a fashion brand created especially for young and lively youth. It consists of a hardworking and enthusiastic group of people. From the beginning of this brand, the team decides to be very creative in contributing to their thoughts. The imaginative idea is transformed into stunning floral western wear. The team has walked through more decorative touches of excellent fabric textures. Ethnic style clothing is available in both tailored and non-tailored wear. The group desires to build a loyal base of customers with their casual, regular, and party-wear western prets.",
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
                      'Vision & Mission',
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
                        "The vision of Meeraki is that beauty is universal. The company aims to provide a complete set of aesthetic designs, vibrant colors, and beautiful floral designs to mirror their emotions. We desire to leave an everlasting experience in the hearts of our loyal customers. Meeraki wants the women so empowering, inspiring, and confident while wearing their casuals. Therefore, the dresses are made affordable and vibrant with the colors of nature. The beauty of the dresses is that they will give you charming uniqueness with different weaves, styles, and stitches. When it comes to weaving, printing, stitching, and embellishments, we believe that a consistent and striving to push the boundaries of what is possible may bring the best out of useless things. The mission of Meeraki is to develop a range of designs and styles varying with different trends and seasons. Our expressive wearable fashion pret will give you a distinctive identity wherever you go.",
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
                      'About Us',
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
                        "Meeraki is named after creativeness, love, and soulful experience of clothing. We have a diverse clothing line with various textures and fabrics, including silk, cambric, cotton, chiffon, and organza. The unique thing about Meeraki is that it believes in equality and caters its beautiful designed clothes for both men and women.\n\n"
                        "A wide range of clothing is available informal, casual, unstitched, and pret mediums. Meeraki provides multiple advantages to its customers in its fashionwear by prioritizing the colors of nature. We believe that the liveliest person wears the colors of nature, which portray emotions and feelings through different shades and styles. Our basic apparel is fashionable, trendy, and aesthetic, conducting a different story in each piece.",
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
                      'About the Company',
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
                        "Meeraki is a organization looking forward to revitalizing rich heritage through its unique and inspiring designs. We bring trendy wearables and aim to expand to motivate the nation with modest detailing. We take inspiration from worldwide, including Arabic style, street, music, technology, comfy, and aesthetics. We indulge in the latest lifestyle trends by expressing modern art.",
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
