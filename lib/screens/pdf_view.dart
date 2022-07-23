// ignore_for_file: avoid_print, import_of_legacy_library_into_null_safe, unused_field

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
  bool isLoading = true;
  final _key = UniqueKey();
  // final key = GlobalKey();
  int position = 1;
  doneLoading(String A) {
    setState(() {
      isLoading = false;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  onLoading() {
    setState(() {
      const CircularProgressIndicator.adaptive();
    });
  }

  @override
  Widget build(BuildContext context) {
    // var dataOfUser = context.watch<UserData>().userDetail;
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios)),
          title: const Text("Spring-Summer Collection"),
        ),
        body: Stack(
          children: [
            WebView(
              initialUrl:
                  "https://meeraki.com/public/uploads/uiimages/Catalogue.pdf",
              javascriptMode: JavascriptMode.unrestricted,
              key: _key,
              onPageFinished: doneLoading,
              // onPageStarted: startLoading,
              // onProgress: onLoading(),
            ),
            isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xff64266c),
                    ),
                  )
                : Stack(),
          ],
        ),
      ),
    );
  }
}
