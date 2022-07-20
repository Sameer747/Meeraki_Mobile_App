import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/models/slider_provider.dart';
import 'package:meeraki_store/notifiers/banners_provider.dart';
import 'package:meeraki_store/notifiers/blogs_provider.dart';
import 'package:meeraki_store/notifiers/cart_provider.dart';
import 'package:meeraki_store/notifiers/categories_provider.dart';
import 'package:meeraki_store/notifiers/feature_details_notifier.dart';
import 'package:meeraki_store/notifiers/feature_provider.dart';
import 'package:meeraki_store/notifiers/login_provider.dart';
import 'package:meeraki_store/notifiers/product_notifier.dart';
import 'package:meeraki_store/notifiers/sellingNotifier.dart';
import 'package:meeraki_store/notifiers/sign_in_provider.dart';
import 'package:meeraki_store/notifiers/signup_provider.dart';
import 'package:meeraki_store/notifiers/sub_categories_notifier.dart';
import 'package:meeraki_store/notifiers/userdata_provider.dart';
import 'package:meeraki_store/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: kPrimaryColor, // navigation bar color
      statusBarBrightness: Brightness.dark // status bar color
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignInSignUpDataProvider>(
            create: (context) => SignInSignUpDataProvider()),
        ChangeNotifierProvider<CartProvider>(
            create: (context) => CartProvider()),
        ChangeNotifierProvider<UserSignUp>(create: (context) => UserSignUp()),
        ChangeNotifierProvider<LoginProvider>(
            create: (context) => LoginProvider()),
        ChangeNotifierProvider<UserData>(create: (context) => UserData()),
        ChangeNotifierProvider<BannersProvider>(
            create: (context) => BannersProvider()),
        ChangeNotifierProvider<SlidersProvider>(
            create: (context) => SlidersProvider()),
        ChangeNotifierProvider<FeatureNotifierProvider>(
            create: (context) => FeatureNotifierProvider()),
        ChangeNotifierProvider<BestNotifier>(
            create: (context) => BestNotifier()),
        ChangeNotifierProvider<CategoriesProvider>(
            create: (context) => CategoriesProvider()),
        ChangeNotifierProvider<SubCategoriesProvider>(
            create: (context) => SubCategoriesProvider()),
        ChangeNotifierProvider<ProductProvider>(
            create: (context) => ProductProvider()),
        ChangeNotifierProvider<FeatureDetailsNotifier>(
            create: (context) => FeatureDetailsNotifier()),
        ChangeNotifierProvider<BlogsProvider>(
            create: (context) => BlogsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: kPrimaryLightColor,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: AppBarTheme(
              color: kPrimaryLightColor,
            )),
        home: const SplashScreen(),
      ),
    );
  }
}
