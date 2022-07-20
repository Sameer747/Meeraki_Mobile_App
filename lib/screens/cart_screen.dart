import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/config/shared_preferences_helper.dart';
import 'package:meeraki_store/notifiers/cart_provider.dart';
import 'package:meeraki_store/screens/sign.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () {
              if (SharedPreferencesHelper()
                      .getUserAccessTokenFromPrefrences() !=
                  null) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignScreen()));
              }
            },
            child: Column(
              children: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(color: kPrimaryLightColor)),
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: kPrimaryLightColor, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          title: Text("Cart"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder(
                  future: context.read<CartProvider>().fetchCartItems(),
                  builder: (context, snapshot) {
                    return Consumer<CartProvider>(builder: (context, value, _) {
                      return value.getCartItems().length == 0
                          ? const Expanded(
                              child: Center(child: Text("Empty")),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  (value.getCartItems().length / 6).toInt(),
                              itemBuilder: (
                                context,
                                index,
                              ) {
                                List<String> currentItem = value
                                    .getCartItems()
                                    .getRange(6 * index, 6 * index + 6)
                                    .toList();
                                return ListTile(
                                  leading: Image.network(
                                    "${Helper.baseUrl2 + Helper.public}${currentItem[2]}",
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.fill,
                                  ),
                                  title: Text(
                                      "${currentItem[1]} (${currentItem[5]})"),
                                  subtitle: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          "${currentItem[4]}x${currentItem[3]}"),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          GestureDetector(
                                            onTap: () async {
                                              value.decreaseQuantity(index);
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
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 8.0),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: kPrimaryColor),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                )),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              value.increaseQuantity(index);
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
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 8.0),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: kPrimaryColor),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  trailing: GestureDetector(
                                    onTap: () {
                                      value.removeFromCart(index);
                                    },
                                    child: Icon(
                                      Icons.delete_outlined,
                                    ),
                                  ),
                                );
                              });
                    });
                  }),
              Consumer<CartProvider>(builder: (context, value, _) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal"),
                      Text("Rs. ${value.getSubTotal()}"),
                    ],
                  ),
                );
              }),
            ]),
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
