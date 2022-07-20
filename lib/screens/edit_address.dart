// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({Key? key}) : super(key: key);

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  bool isLoading = false;

  TextEditingController address = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController postal = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController stateOrProvinceCode = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryLightColor,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 22.0, left: 8.0, bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.navigate_before,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.29,
                    ),
                    const Center(
                      child: Text(
                        'Edit Address',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16.0),
                      ),
                      color: Colors.grey[200]),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      addressFields(
                          address, "Address", TextInputType.streetAddress),
                      const SizedBox(
                        height: 15,
                      ),
                      addressFields(country, "Country", TextInputType.name),
                      const SizedBox(
                        height: 15,
                      ),
                      addressFields(
                          postal, "Postal Code", TextInputType.number),
                      const SizedBox(
                        height: 15,
                      ),
                      addressFields(phone, "Phone", TextInputType.number),
                      const SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: width - 10,
                        child: Column(
                          children: [
                            GestureDetector(
                                onTap: () async {
                                  // if (postal.text.isEmpty &&
                                  //     address.text.isEmpty &&
                                  //     city.text.isEmpty &&
                                  //     stateOrProvinceCode.text.isEmpty &&
                                  //     postal.text.isEmpty &&
                                  //     country.text.isEmpty) {
                                  //   ScaffoldMessenger.of(context)
                                  //       .showSnackBar(const SnackBar(
                                  //     content: Text(
                                  //         "Please Input Proper Address for Shipping Requirements",
                                  //         style: TextStyle(
                                  //             fontSize: 14.5,
                                  //             fontStyle: FontStyle.italic,
                                  //             fontWeight: FontWeight.bold)),
                                  //     duration:
                                  //         Duration(milliseconds: 1000),
                                  //   ));
                                  // }
                                  // if (!_formKey.currentState.validate()) {
                                  //   return;
                                  // } else {
                                  //   setState(() {
                                  //     isLoading = true;
                                  //   });
                                  //   bool postalauth = await context
                                  //       .read<AddressNotifer>()
                                  //       .postalCodeCheck(
                                  //           postal.text,
                                  //           context
                                  //               .read<
                                  //                   CheckoutNotifierProvider>()
                                  //               .token);

                                  //   bool addressAuth = await context
                                  //       .read<AddressNotifer>()
                                  //       .addressCheck(
                                  //           context
                                  //               .read<
                                  //                   CheckoutNotifierProvider>()
                                  //               .token,
                                  //           address.text,
                                  //           city.text,
                                  //           stateOrProvinceCode.text,
                                  //           postal.text,
                                  //           country.text);

                                  //   if (postalauth && addressAuth) {
                                  //     setState(() {
                                  //       isLoading = false;
                                  //     });

                                  //     bool check = await context
                                  //         .read<AddAddressNotifier>()
                                  //         .postAddress(
                                  //             address.text,
                                  //             country.text,
                                  //             city.text,
                                  //             postal.text,
                                  //             phone.text,
                                  //             stateOrProvinceCode.text);
                                  //     if (check) {
                                  //       context
                                  //           .read<AddressNotifer>()
                                  //           .getAddress();
                                  //       address.clear();
                                  //       country.clear();
                                  //       city.clear();
                                  //       postal.clear();
                                  //       phone.clear();
                                  //       stateOrProvinceCode.clear();
                                  //     }
                                  //     Navigator.pop(context);
                                  //   } else {
                                  //     setState(() {
                                  //       isLoading = false;
                                  //     });
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(const SnackBar(
                                  //       content: Text(
                                  //           "Please recheck your provided details."),
                                  //       duration:
                                  //           Duration(milliseconds: 10000),
                                  //     ));
                                  //   }
                                  // }
                                },
                                child: Container(
                                  height: 40,
                                  width: width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: kPrimaryColor,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Submit",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget addressFields(controller, hintText, textInputType) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300,
              offset: const Offset(2.0, 2.0), //(x,y)
              blurRadius: 5,
              spreadRadius: 0),
        ],
      ),
      child: TextFormField(
        validator: (text) {
          if (text == null || text.isEmpty) {
            return 'Empty';
          }
          return null;
        },
        controller: controller,
        style: const TextStyle(color: Colors.black),
        // initialValue: widget.initialValue,
        cursorColor: kPrimaryLightColor,
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: "$hintText",
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.only(left: 8.0),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none),
      ),
    );
  }
}
