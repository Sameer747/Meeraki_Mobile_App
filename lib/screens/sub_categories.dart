// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable, sized_box_for_whitespace, unnecessary_string_interpolations, avoid_print

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/notifiers/sub_categories_notifier.dart';
import 'package:meeraki_store/screens/product.dart';
import 'package:provider/provider.dart';

class SubCategories extends StatefulWidget {
  var link;
  var name;
  SubCategories(this.link, this.name);

  @override
  State<SubCategories> createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<SubCategories> {
  ifnumberOfChildrenAreZero(name, link) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Product(link, name)));
  }

  ifnumberOfChildrenAreNOtZero(name, link) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubCategories(name, link),
      ),
    );
  }

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
          future:
              context.read<SubCategoriesProvider>().fetchAllSub(widget.link),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              var cat =
                  context.read<SubCategoriesProvider>().getAllCategories();
              return GridView.count(
                shrinkWrap: true,
                childAspectRatio: 0.9,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(cat.data.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      cat.data[index].numberOfChildren == 0
                          ? ifnumberOfChildrenAreZero(cat.data[index].name,
                              cat.data[index].links.products)
                          : ifnumberOfChildrenAreNOtZero(
                              widget.name, cat.data[index].links.subCategories);
                      print("${cat.data[index].links.products}");
                      print("${cat.data[index].links.subCategories}");
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Card(
                          elevation: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: cat.data[index].banner == ""
                                    ? const Padding(
                                        padding: EdgeInsets.only(top: 80),
                                        child: Center(
                                          child: Text("NO IMAGE"),
                                        ),
                                      )
                                    : Container(
                                        height: 170,
                                        width: width,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                            "${Helper.baseUrl2 + Helper.public + cat.data[index].banner}",
                                          ),
                                        ))),
                              ),
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "${cat.data[index].name}",
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              );
            }
          },
        ),
      ),
    );
  }
}
