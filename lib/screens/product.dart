// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/notifiers/product_notifier.dart';
import 'package:provider/provider.dart';

class Product extends StatefulWidget {
  var name;
  var links;
  Product(this.links, this.name);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          title: Text(
            "${widget.name}",
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        body: FutureBuilder(
          future: context.read<ProductProvider>().fetchProducts(widget.links),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              var products = context.read<ProductProvider>().getPro();
              return products != null
                  ? const Center(child: Text("No Products Avalible"))
                  : GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children:
                          List.generate(products.data.data.length, (index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            height: width * 0.5,
                            width: width,
                            child: Card(
                              elevation: 25,
                              child: Column(
                                children: [
                                  Text("${products.data[index].name}")
                                ],
                              ),
                            ),
                          ),
                        );
                      }));
            }
          },
        ),
      ),
    );
  }
}
