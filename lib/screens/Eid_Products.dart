// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/helper.dart';
import '../notifiers/feature_provider.dart';
import 'eid_collection_product_detail.dart';

class EidProducts extends StatefulWidget {
  const EidProducts({Key? key}) : super(key: key);

  @override
  State<EidProducts> createState() => _EidProductsState();
}

class _EidProductsState extends State<EidProducts> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double d = 20;
    // int activeIndex = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Eid Festive Collection"),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        // padding: const EdgeInsets.all(15),
        padding: EdgeInsets.only(left: d, right: d),
        // margin: const EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: FutureBuilder(
          future: context.read<FeatureNotifierProvider>().fetchFeatureProduct(),
          builder: (context, snapshot) {
            try {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              } else {
                var feat =
                    context.read<FeatureNotifierProvider>().getAllFeatures();
                return SingleChildScrollView(
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    // scrollDirection: Axis.vertical,
                    itemCount: feat.data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EidCollectionProductDetails(
                                  feat.data[index].name,
                                  feat.data[index].links.details)));
                        },
                        child: Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 250,
                                width: width,
                                alignment: Alignment.center,
                                child: Image.network(
                                  "${Helper.baseUrl2 + Helper.public + feat.data[index].thumbnailImage}",
                                  //height: 300,
                                  width: 300,
                                  fit: BoxFit.fill,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${feat.data[index].name}",
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${feat.data[index].basePrice}",
                                style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${feat.data[index].discountPrice}",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.yellow,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("${feat.data[index].rating.toString()}")
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      // crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                  ),
                );
              }
            } catch (e) {
              throw Exception(e);
            }
          },
        ),
      ),
    );
  }
}
