import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/helper.dart';
import '../notifiers/categories_provider.dart';
import '../notifiers/product_notifier.dart';
import '../notifiers/sub_categories_notifier.dart';
import 'product.dart';
import 'sub_categories.dart';

class ReadyToWear extends StatefulWidget {
  const ReadyToWear({Key? key}) : super(key: key);

  @override
  State<ReadyToWear> createState() => _ReadyToWearState();
}

class _ReadyToWearState extends State<ReadyToWear> {
  @override
  ifnumberOfChildrenAreZero(name, link) {
    context.read<ProductProvider>().fetchProducts(link);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Product(link, name)));
  }

  ifnumberOfChildrenAreNOtZero(name, link) {
    context.read<SubCategoriesProvider>().fetchAllSub(link);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SubCategories(name, link),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: FutureBuilder(
          future: context.read<CategoriesProvider>().fetchCategory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator.adaptive();
            } else {
              var cat = context.read<CategoriesProvider>().getAllCat();
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cat.data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        cat.data[index].numberOfChildren == 0
                            ? ifnumberOfChildrenAreZero(
                                cat.data[index].name,
                                cat.data[index].links.products,
                              )
                            : ifnumberOfChildrenAreNOtZero(
                                cat.data[index].links.subCategories,
                                cat.data[index].name);
                      },
                      child: Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      "${cat.data[index].name}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                      height: 120,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          "${Helper.baseUrl2 + Helper.public + cat.data[index].banner}",
                                        ),
                                      ))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
