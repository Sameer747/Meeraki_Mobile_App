// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

appBarForChatScreen(BuildContext context, {String? image, String? name}) {
  return PreferredSize(
      preferredSize: Size(double.infinity, 100),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)
        ]),
        height: 56,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                print('presses');

                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff979696),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => DashBoard(page:4),
                //   ),
                // );
              },
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 45,
                        child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(4.0),
                          margin: EdgeInsets.only(
                              left: 0.0, right: 8.0, top: 8.0, bottom: 8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: kPrimaryColor),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(image!), fit: BoxFit.fill),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        top: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          maxRadius: 5,
                          child: CircleAvatar(
                            maxRadius: 4,
                            backgroundColor: Color(0xff51ce6a),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name!),
                      Text(
                        'online',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'AudioCall');
              },
              child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(4.0),
                  margin: EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 0.0, bottom: 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    Icons.phone,
                    color: Colors.grey,
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'VideoCall');
              },
              child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(4.0),
                  margin: EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(Icons.videocam, color: Colors.grey)),
            ),
          ],
        ),
      ));
}

userChatBubble(String message) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            alignment: Alignment.topCenter,
            //  width: 200,
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            decoration: BoxDecoration(
                color: Color(0xffE2F0FF),
                borderRadius: BorderRadius.circular(4.0)),
            child: Center(
                child: Text(
              message,
              style: TextStyle(color: Colors.black),
            )),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Text(
        '4.15 pm',
        style: TextStyle(color: Colors.grey, fontSize: 12),
      )
    ],
  );
}

therUserChatBubble({String? message, String? img}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            maxRadius: 35,
            backgroundColor: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                maxRadius: 35,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(img!),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            //  width: 200,
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
            child: Center(
                child: Text(
              message!,
              style: TextStyle(color: Colors.black),
            )),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text(
          '4.15 pm',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      )
    ],
  );
}
