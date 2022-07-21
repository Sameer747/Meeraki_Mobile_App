// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, unnecessary_this, sized_box_for_whitespace, unused_local_variable, avoid_unnecessary_containers, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/slider_provider.dart';
// import 'package:meeraki_store/models/sub_category_model.dart';
import 'package:meeraki_store/notifiers/banners_provider.dart';
import 'package:meeraki_store/notifiers/categories_provider.dart';
import 'package:meeraki_store/notifiers/feature_provider.dart';
import 'package:meeraki_store/notifiers/product_notifier.dart';
import 'package:meeraki_store/notifiers/sellingNotifier.dart';
import 'package:meeraki_store/notifiers/sub_categories_notifier.dart';
import 'package:meeraki_store/screens/blogs.dart';
import 'package:meeraki_store/screens/cart_screen.dart';
import 'package:meeraki_store/screens/feature_product_detail.dart';
import 'package:meeraki_store/screens/ReadyToWear.dart';
import 'package:meeraki_store/screens/pdf_view.dart';
import 'package:meeraki_store/screens/product.dart';
import 'package:meeraki_store/screens/static_screens/about_us.dart';
// import 'package:meeraki_store/screens/static_screens/add_address.dart';
import 'package:meeraki_store/screens/static_screens/delivery_policy.dart';
import 'package:meeraki_store/screens/static_screens/faqs.dart';
import 'package:meeraki_store/screens/static_screens/privacy_policy.dart';
import 'package:meeraki_store/screens/static_screens/return_policy.dart';
import 'package:meeraki_store/screens/static_screens/terms_condi.dart';
import 'package:meeraki_store/screens/sub_categories.dart';
import 'package:meeraki_store/screens/tawk_chat.dart';
import 'package:provider/provider.dart';

import 'static_screens/contact_us.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    setState(() {
      // context.watch<BannersProvider>().fetchAllBan();
      // context.read<BannersProvider>().getAllBan();
    });
    super.initState();
  }

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
    double width = MediaQuery.of(context).size.width;
    int activeIndex = 0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryLightColor,
          //  automaticallyImplyLeading: false,
          title: Image.asset(
            "assets/logo.png",
            height: 45,
            width: width - 250,
            fit: BoxFit.fill,
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 5),
              child: GestureDetector(
                child: Icon(Icons.search, color: kPrimaryColor),
              ),
            ),
            GestureDetector(
              //cartscreen navigation start
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              //cartscreen navigation end
              child: Icon(
                Icons.shopping_cart_outlined,
                color: kPrimaryColor,
                // size: 40,
              ),
            ),
          ],
        ),
        drawer: Container(
          width: 320,
          child: Drawer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white, kPrimaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: width * 0.15,
                      child: Center(
                        child: Image.asset("assets/logo.png"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //eid festival collection
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child:
                                  Image.asset("assets/eid_festive_icon.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TawkChat()));
                          },
                          child: const Text(
                            "Eid Festival Collection",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Ready to Wear
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child:
                                  Image.asset("assets/ready_to_wear_icon.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SubCategories(this.link, this.name)));
                            // //     builder: (context) => ReadyToWear()));
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ReadyToWear()));
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) =>
                            //       SubCategories(this.lnk, this.nam),
                            // ));
                          },
                          child: const Text(
                            "Ready to Wear",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Summer Collection
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child:
                                  Image.asset("assets/summer collection.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const pdf()));
                          },
                          child: const Text(
                            "Summer Collection",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Spring Collection
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child:
                                  Image.asset("assets/spring collection.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            // FlutterFilePreview.openFile(
                            //     "https://meeraki.com/public/uploads/uiimages/Catalogue.pdf",
                            //     title: 'Size Chart');
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const pdf()));
                          },
                          child: const Text(
                            "Spring Collection",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //chat
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/chat.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TawkChat()));
                          },
                          child: const Text(
                            "Chat",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/contacts.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const PrivacyPolicy()));
                          },
                          child: Text("Privacy Policy",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/blog.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Blogs()));
                          },
                          child: Text(
                            "Blogs",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/delivery.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DeliveryPolicy()));
                            },
                            child: Text("Delivery Policy",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/return.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ReturnPolicy()));
                            },
                            child: Text(
                              "Return Policy",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/contract.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TermsConditions()));
                            },
                            child: Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/user.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AboutUs()));
                            },
                            child: Text(
                              "About Us",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/faq.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FAQS()));
                            },
                            child: Text(
                              "FAQS",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/call.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ContactUs()));
                            },
                            child: Text(
                              "Contact Us",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //login/logout
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsetsDirectional.only(start: 25),
                    //       child: Container(
                    //           height: 25,
                    //           width: 30,
                    //           child: Image.asset("assets/chat.png")),
                    //     ),
                    //     SizedBox(
                    //       width: 25,
                    //     ),
                    //     GestureDetector(
                    //       //onTap: () {
                    //       // Navigator.of(context).push(MaterialPageRoute(
                    //       //    builder: (context) => const TawkChat()));
                    //       //},
                    //       child: Text(
                    //         "Login/logout",
                    //         style: TextStyle(
                    //             fontSize: 18, fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    //Order History
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/order history.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TawkChat()));
                          },
                          child: const Text(
                            "Order History",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //My WishList
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/whishlist.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TawkChat()));
                          },
                          child: const Text(
                            "My Wishlist",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //Track Order
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 25),
                          child: Container(
                              height: 25,
                              width: 30,
                              child: Image.asset("assets/track order.png")),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TawkChat()));
                          },
                          child: const Text(
                            "Track Order",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Divider(
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 0,
              ),
              //ad slider
              Container(
                  height: 200,
                  width: width * 400,
                  child: FutureBuilder(
                    future: context.read<SlidersProvider>().fetchSliderData(),
                    builder: (context, snapshot) {
                      try {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator.adaptive();
                        } else {
                          var data =
                              context.read<SlidersProvider>().getAllData();

                          return CarouselSlider.builder(
                            itemCount: data.data == null ? 0 : data.data.length,
                            options: CarouselOptions(
                                autoPlayCurve: Curves.easeInOut,
                                height: 300,
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
                            itemBuilder: (context, index, relation) {
                              // final urlImage = urlImages[index];
                              return Container(
                                //  margin: const EdgeInsets.symmetric(horizontal: 30),

                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "${Helper.baseUrl2 + Helper.public + data.data[index].photo}",
                                  ),
                                )),
                              );
                            },
                          );
                        }
                      } catch (e) {
                        throw Exception(e);
                      }
                    },
                  )),
              const SizedBox(
                height: 5,
              ),
              //mid summer sale banner
              Container(
                height: 100,
                width: width,
                child: FutureBuilder(
                  future: context.read<BannersProvider>().fetchAllBan(),
                  builder: (context, snapshot) {
                    try {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else {
                        var img = context.watch<BannersProvider>().getAllBan();
                        return Row(
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                  height: 200,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                      "${Helper.baseUrl2 + Helper.public + img.data[0].photo}",
                                    ),
                                  ))),
                            ),
                            Container(
                                height: 200,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "${Helper.baseUrl2 + Helper.public + img.data[1].photo}",
                                  ),
                                ))),
                            Container(
                                height: 200,
                                width: 130,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    "${Helper.baseUrl2 + Helper.public + img.data[2].photo}",
                                  ),
                                ))),
                          ],
                        );
                      }
                    } catch (e) {
                      throw Exception(e);
                    }
                  },
                ),
              ),
              // const SizedBox(
              //   height: 25,
              // ),
              // Container(
              //   margin: const EdgeInsets.only(left: 10),
              //   child: Text(
              //     "Categories",
              //     style: TextStyle(
              //         fontSize: 22,
              //         fontWeight: FontWeight.bold,
              //         color: kPrimaryLightColor),
              //   ),
              // ),
              const SizedBox(
                height: 25,
              ),
              // new arrival or ready to wear
              Container(
                height: 200,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
              //feature products
              Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Feature Products",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryLightColor),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 315,
                child: FutureBuilder(
                  future: context
                      .read<FeatureNotifierProvider>()
                      .fetchFeatureProduct(),
                  builder: (context, snapshot) {
                    try {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else {
                        var feat = context
                            .read<FeatureNotifierProvider>()
                            .getAllFeatures();
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: feat.data.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          FeatureProductDetails(
                                              feat.data[index].name,
                                              feat.data[index].links.details)));
                                },
                                child: Container(
                                    height: 450,
                                    width: 200,
                                    child: Card(
                                      elevation: 20,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 210,
                                              width: width,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  "${Helper.baseUrl2 + Helper.public + feat.data[index].thumbnailImage}",
                                                ),
                                              ))),
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
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "${feat.data[index].discountPrice}",
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
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
                                              Text(
                                                  "${feat.data[index].rating.toString()}")
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                              );
                            });
                      }
                    } catch (e) {
                      throw Exception(e);
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryLightColor),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 315,
                child: FutureBuilder(
                  future: context.read<BestNotifier>().fetchSellingPro(),
                  builder: (context, snapshot) {
                    try {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else {
                        var sell = context.read<BestNotifier>().getAllSellPro();
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: sell.data.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          FeatureProductDetails(
                                              sell.data[index].name,
                                              sell.data[index].links.details)));
                                },
                                child: Container(
                                    height: 450,
                                    width: 200,
                                    child: Card(
                                      elevation: 20,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: 210,
                                              width: width,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage(
                                                  "${Helper.baseUrl2 + Helper.public + sell.data[index].thumbnailImage}",
                                                ),
                                              ))),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "${sell.data[index].name}",
                                            style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "${sell.data[index].basePrice}",
                                            style: const TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "${sell.data[index].discountPrice}",
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
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
                                              Text(
                                                  "${sell.data[index].rating.toString()}")
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                              );
                            });
                      }
                    } catch (e) {
                      throw Exception(e);
                    }
                  },
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
