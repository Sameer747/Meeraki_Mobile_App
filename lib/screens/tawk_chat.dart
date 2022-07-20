// ignore_for_file: avoid_print, import_of_legacy_library_into_null_safe, unused_field

import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_tawk/flutter_tawk.dart';

import 'package:webview_flutter/webview_flutter.dart';

class TawkChat extends StatefulWidget {
  const TawkChat({Key? key}) : super(key: key);

  @override
  _TawkChatState createState() => _TawkChatState();
}

class _TawkChatState extends State<TawkChat> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  final key = GlobalKey();
  int position = 1;
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dataOfUser = context.watch<UserData>().userDetail;
    // ignore: prefer_const_constructors
    return SafeArea(
      child: WebView(
        initialUrl: "https://tawk.to/chat/6267f2dfb0d10b6f3e6f702d/1g1j0pf6b",
        javascriptMode: JavascriptMode.unrestricted,
        key: key,
        onPageFinished: doneLoading,
        onPageStarted: startLoading,

        // onProgress: onloading(),
      ),
    );
  }
}
