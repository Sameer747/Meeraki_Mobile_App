// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, must_be_immutable, avoid_unnecessary_containers, unnecessary_string_interpolations, duplicate_ignore, unused_local_variable, import_of_legacy_library_into_null_safe, unused_import, dead_code, sized_box_for_whitespace, unused_element, prefer_const_constructors, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:meeraki_store/components/bottom_sheet.dart';
import 'package:meeraki_store/models/feature_details_model.dart';
import 'package:meeraki_store/screens/cart_screen.dart';
import 'package:provider/provider.dart';

import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/notifiers/feature_details_notifier.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeatureProductDetails extends StatefulWidget {
  var name;
  var link;
  FeatureProductDetails(this.name, this.link);

  @override
  State<FeatureProductDetails> createState() => _FeatureProductDetailsState();
}

class _FeatureProductDetailsState extends State<FeatureProductDetails> {
  final GlobalKey<ExpansionTileCardState> cad = GlobalKey();

  bool makeAddToCartBtnDisable = true;

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isSelected = false;
    MaterialStateProperty getColor(Color color, Color colorPressed) {
      // ignore: prefer_function_declarations_over_variables
      final getColor = (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return colorPressed;
        } else {
          return color;
        }
      };
      return MaterialStateProperty.resolveWith(getColor);
    }

    return SafeArea(
      child: FutureBuilder(
          // stream: nll,
          future: context
              .read<FeatureDetailsNotifier>()
              .fetchFeaDetails(widget.link),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator.adaptive();
            }
            FeatureDetails dat =
                context.read<FeatureDetailsNotifier>().getData();
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: kPrimaryLightColor,
                  title: Text("${widget.name}"),
                ),
                bottomNavigationBar: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartScreen()));
                        },
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          color: kPrimaryLightColor,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            // productNotifierRead.clearData();
                            // productNotifierRead.postINAPI();
                            // makeAddToCartBtnDisable == false
                            //add to cart start
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                            //add to cart screen end
                            //? Navigator.pushNamed(
                            //         context, Cart.route)
                            //     //: snack();
                            //     :
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return BuildBottomSheet(
                                      data: dat,
                                      size: context
                                          .read<FeatureDetailsNotifier>()
                                          .getSelectedSize());
                                });
                          },
                          child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  border:
                                      Border.all(color: kPrimaryLightColor)),
                              child: makeAddToCartBtnDisable == false
                                  ? Text(
                                      'Go to Cart',
                                      style: TextStyle(
                                          color: kPrimaryLightColor,
                                          fontSize: 18),
                                    )
                                  : Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                          color: kPrimaryLightColor,
                                          fontSize: 18),
                                    )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 3,
                        child: GestureDetector(
                          onTap: () async {
                            // productNotifierRead.postINAPI();
                            // await context
                            //     .read<AddCartNotifierProvider>()
                            //     .addToCartItems(
                            //         (productDetailData.data[0].id),
                            //         1,
                            //         productNotifierWatch
                            //             .allDropDownPush);

                            // Navigator.pushNamed(
                            //     context, CheckOut.route);
                          },
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              // ignore: prefer_const_literals_to_create_immutables
                            ),
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                  color: kPrimaryLightColor, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                body: ListView.builder(
                    shrinkWrap: true,
                    itemCount: dat.data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CarouselSlider(
                            items: List.generate(dat.data[index].photos.length,
                                (index) {
                              return Container(
                                  height: 350,
                                  width: width,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    fit: BoxFit.fill,
                                    // ignore: unnecessary_string_interpolations
                                    image: NetworkImage(
                                        "${Helper.baseUrl2 + Helper.public + dat.data[0].photos[index]}"),
                                  )));
                            }),
                            options: CarouselOptions(
                                autoPlayCurve: Curves.easeInOut,
                                height: 450,
                                autoPlay: true,
                                reverse: true,
                                viewportFraction: 1,
                                enlargeCenterPage: true,
                                onPageChanged: (index, reason) {
                                  activeIndex = index;
                                },
                                //enlargeStrategy: CenterPageEnlargeStrategy.height,
                                autoPlayAnimationDuration:
                                    const Duration(seconds: 3)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 150),
                                child: Text(
                                  "${dat.data[index].name}",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              dat.data[index].currentStock == null
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 35,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text(
                                              "Out of Stock",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                    )
                                  : Container(
                                      height: 35,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Expanded(
                                          flex: 2,
                                          child: Text(
                                            "In Stock",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 4.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '${double.parse(((dat.data[0].rating).toStringAsFixed(1)).toString())}',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                RatingBar.builder(
                                  itemSize: 15,
                                  initialRating: double.parse(
                                      ((dat.data[0].rating)
                                          .toStringAsFixed(1))),
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Spacer(),
                                Text(
                                  '${dat.data[0].ratingCount.toString()} Reviews',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          dat.data[index].hasDiscount == true
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Price",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              '${dat.data[0].strokedPrice}',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Discount-Price",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "${dat.data[0].mainPrice}",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: kPrimaryColor,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Price",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "${dat.data[0].mainPrice}",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: kPrimaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${dat.data[index].shopName}"),
                          ),
                          Container(
                            height: 50,
                            width: width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(Helper.baseUrl2 +
                                        Helper.public +
                                        dat.data[index].shopLogo))),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Text(
                              "${dat.data[index].choiceOptions[index].title}",
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 100,
                              child: Consumer<FeatureDetailsNotifier>(
                                  // stream: null,
                                  builder: (context, value, _) {
                                return ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    // semanticChildCount: 3,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    itemCount: dat.data[0].choiceOptions[0]
                                        .options.length,
                                    itemBuilder: (context, idx) {
                                      return Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: GestureDetector(
                                          onTap: () => value.setSelected(dat
                                              .data[0]
                                              .choiceOptions[0]
                                              .options[idx]),
                                          child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color:
                                                    value.getSelectedSize() ==
                                                            dat
                                                                .data[0]
                                                                .choiceOptions[
                                                                    0]
                                                                .options[idx]
                                                        ? kPrimaryColor
                                                        : Colors.white,

                                                border: Border.all(
                                                    color: kPrimaryColor),
                                                //   border: Border(
                                                // top: BorderSide(
                                                //   width: 2,
                                                //   color: isSelected
                                                //       ? kPrimaryLightColor
                                                //       : kPrimaryColor,
                                                // ),
                                                // bottom: BorderSide(
                                                //   width: 2,
                                                //   color: isSelected
                                                //       ? kPrimaryLightColor
                                                //       : kPrimaryColor,
                                                // ),
                                                // left: BorderSide(
                                                //   width: 2,
                                                //   color: isSelected
                                                //       ? kPrimaryLightColor
                                                //       : kPrimaryColor,
                                                // ),
                                                // right: BorderSide(
                                                //   width: 2,
                                                //   color: isSelected
                                                //       ? kPrimaryLightColor
                                                //       : kPrimaryColor,
                                                // ),
                                                // )
                                              ),
                                              child: Center(
                                                child: Text(
                                                    "${dat.data[0].choiceOptions[0].options[idx]}"),
                                              )),
                                        ),
                                      );
                                    });
                              })),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kPrimaryLightColor,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                              width: width / 0,
                              height: width * 0.45,
                              child: SingleChildScrollView(
                                child: Card(
                                  child: Html(
                                    // ignore: prefer_if_null_operators
                                    data: dat.data[index].description == null
                                        ? "<span></span>"
                                        : dat.data[index].description,
                                  ),
                                ),
                              ))
                        ],
                      );
                    }));
          }),
    );
  }
}
