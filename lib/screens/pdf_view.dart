// ignore_for_file: avoid_print, import_of_legacy_library_into_null_safe, unused_field, camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:flutter_tawk/flutter_tawk.dart';

import 'package:webview_flutter/webview_flutter.dart';

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  _pdfState createState() => _pdfState();
}

class _pdfState extends State<pdf> {
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
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
          title: const Text("Spring-Summer Collection"),
        ),
        body: WebView(
          initialUrl:
              "https://meeraki.com/public/uploads/uiimages/Catalogue.pdf",
          javascriptMode: JavascriptMode.unrestricted,
          key: key,
          onPageFinished: doneLoading,
          onPageStarted: startLoading,

          // onProgress: onloading(),
        ),
      ),
    );
  }
}
