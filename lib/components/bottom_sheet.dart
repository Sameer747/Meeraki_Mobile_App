// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables, unnecessary_null_comparison, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/feature_details_model.dart';
import 'package:meeraki_store/notifiers/cart_provider.dart';
import 'package:meeraki_store/notifiers/feature_details_notifier.dart';
import 'package:provider/provider.dart';

class BuildBottomSheet extends StatefulWidget {
  FeatureDetails data;
  String size;
  BuildBottomSheet({required this.data, required this.size});

  @override
  State<BuildBottomSheet> createState() => _BuildBottomSheetState();
}

class _BuildBottomSheetState extends State<BuildBottomSheet> {
  bool makeAddToCartBtnDisable = true;
  int qty = 1;
  late double totalAmount;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadiusDirectional.vertical(top: Radius.circular(16.0))),
        child: SingleChildScrollView(
          child: Consumer<FeatureDetailsNotifier>(
              // stream: null,
              builder: (context, value, _) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: width * 0.9),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.close),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Card(
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(8.0)),
                    //   child: Container(
                    //     height: 80,
                    //     width: 70,
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(8.0),
                    //         image: DecorationImage(
                    //           image: NetworkImage(Helper.baseUrl2 +
                    //               Helper.public +
                    //               widget.data.data[0].photos[0]),
                    //         )),
                    //   ),
                    // ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: 35),
                        SizedBox(
                          width: width * 0.7,
                          child: Text(
                            '${widget.data.data[0].name}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: width * 0.04,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   "", //price.toString(),
                        //   style: TextStyle(
                        //       color: kPrimaryColor,
                        //       fontSize: width * 0.04,
                        //       fontWeight: FontWeight.bold),
                        // ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Quantity :',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      // GestureDetector(
                      //   onTap: () async {
                      //     context.read<ListOfCartDataProvider>().makeDataNull();
                      //     bool check = await cartNotifierVariable
                      //         .updateCartQuenty(data, index, "-");

                      //     if (check) {
                      //       getList();
                      //     }
                      //   },
                      //   child: Container(
                      //       height: 30,
                      //       width: 30,
                      //       margin: EdgeInsets.symmetric(horizontal: 8.0),
                      //       decoration: BoxDecoration(
                      //           shape: BoxShape.circle, color: kPrimaryColor),
                      //       child: Icon(
                      //         Icons.remove,
                      //         color: Colors.white,
                      //       )),
                      // ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "${value.getQuantity()}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () async {
                          value.decreaseQuantity();
                          // context.read<ListOfCartDataProvider>().makeDataNull();
                          // bool check = await cartNotifierVariable
                          //     .updateCartQuenty(data, index, "+");

                          // if (check) {
                          //   getList();
                          // }
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kPrimaryColor),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ),

                      GestureDetector(
                        onTap: () async {
                          value.increaseQuantity();
                          // context.read<ListOfCartDataProvider>().makeDataNull();
                          // bool check = await cartNotifierVariable
                          //     .updateCartQuenty(data, index, "+");

                          // if (check) {
                          //   getList();
                          // }
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kPrimaryColor),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Total Product Charges :',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    //  totalAmount == null
                    Text(
                      "Rs ${value.getPrice()}",
                      style: TextStyle(
                          fontSize: 18.0,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    // SizedBox(
                    //   width: width * 0.4,
                    //   child: Text(
                    //     "totalAmount.toStringAsFixed(2)",
                    //     maxLines: 1,
                    //     style: TextStyle(
                    //         fontSize: 18.0,
                    //         color: kPrimaryColor,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      onPressed: () async {
                        context.read<CartProvider>().addToCart(
                            "${Helper.productDetailsUrl}${widget.data.data[0].id}",
                            widget.data.data[0].name,
                            widget.data.data[0].thumbnailImage,
                            "${widget.data.data[0].calculablePrice}",
                            "${value.getQuantity()}",
                            value.getSelectedSize());
                        // productNotifierRead.allDropDownPush = [];
                        // productNotifierRead.postINAPI();
                        // if (productNotifierWatch.allDropDownPush != []) {
                        dialog();
                        // var check = await goToCart.addToCartItems(
                        //     (widget.data.data[0].id).toInt(),
                        //     qty,
                        //     productNotifierWatch.allDropDownPush);
                        // if (check != true) {
                        //   context.read<ListOfCartDataProvider>().getListOfCart();
                        // }
                        // Navigator.pop(context);

                        // }

                        // context.read<CartProvider>().saveInCart(price, qty);
                        // Navigator.pop(context);

                        // context
                        //     .read<CartProvider>()
                        //     .makeProductAvailableInCartFalseFunc();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      color: kPrimaryColor,
                      child: makeAddToCartBtnDisable == false
                          ? const Text(
                              'Go to Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          : const Text(
                              'Add to Cart',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  void dialog() {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text(
                'Added to your Cart',
                textAlign: TextAlign.center,
              ),
              content: GestureDetector(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    // padding: EdgeInsets.symmetric(

                    //   horizontal: 20.0,
                    //   vertical: 10.0,
                    // ),
                    height: 40,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadiusDirectional.circular(5.0)),
                    child: const Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ));
  }
}
