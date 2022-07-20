// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:meeraki_store/config/helper.dart';

class BlogsDetails extends StatefulWidget {
  var description;
  var image;
  var name;
  BlogsDetails({Key? key, this.description, this.image, this.name})
      : super(key: key);

  @override
  State<BlogsDetails> createState() => _BlogsDetailsState();
}

class _BlogsDetailsState extends State<BlogsDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Blog"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(Helper.baseUrl2 + Helper.public + widget.image),
                Padding(
                  padding: EdgeInsets.only(
                    left: width * 0.05,
                    right: width * 0.05,
                    top: width * 0.05,
                  ),
                  child: Text(
                    '${widget.name}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.08,
                    ),
                  ),
                ),
                Html(
                  data: widget.description == null
                      ? "<span></span>"
                      : widget.description,
                ),
              ],
            ),

            //  Text(detail.),
          ),
        ),
      ),
    );
  }
}
