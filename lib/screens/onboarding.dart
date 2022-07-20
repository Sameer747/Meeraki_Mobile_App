import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/screens/home_screen.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  final int numPages = 3;
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: isActive
          ? MediaQuery.of(context).size.width * (0.01 + 0.005)
          : MediaQuery.of(context).size.width * (0.01 + 0.007),
      width: isActive
          ? MediaQuery.of(context).size.width * (0.05 + 0.005)
          : MediaQuery.of(context).size.width * (0.02 + 0.007),
      decoration: BoxDecoration(
        // ignore: use_full_hex_values_for_flutter_colors
        color: isActive ? kPrimaryColor : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  List<Widget> buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numPages; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: width > 374 ? width * 1.2 : width * 1.25,
                    // color: Colors.amber,
                    child: PageView(
                      physics: const ClampingScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(height * 0.05),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: const AssetImage(
                                      'assets/preview screens meeraki 1.png',
                                    ),
                                    height: width * 1.21,
                                    width: width * 1.21,
                                  ),
                                ),
                                //SizedBox(height: height * 0.03),
                                // const Text(
                                //   'Welcome to mus greet'
                                //   'unity in the community',
                                //   textAlign: TextAlign.center,
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold, fontSize: 18),
                                // ),
                                // const SizedBox(height: 25),
                                // Text(
                                //   'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                //   textAlign: TextAlign.center,
                                //   style: TextStyle(color: Colors.grey.shade600),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(height * 0.04),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: const AssetImage(
                                      'assets/preview screens meeraki 2.png',
                                    ),
                                    height: width * 1.33,
                                    width: width * 1.33,
                                  ),
                                ),
                                // SizedBox(height: height * 0.03),
                                // const Text(
                                //   'You can donate to your favorite mosque',
                                //   textAlign: TextAlign.center,
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.bold, fontSize: 18),
                                // ),
                                // const SizedBox(height: 25),
                                // Text(
                                //   'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                //   textAlign: TextAlign.center,
                                //   style: TextStyle(color: Colors.grey.shade600),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(height * 0.04),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: const AssetImage(
                                      'assets/preview screens meeraki 3.png',
                                    ),
                                    height: width * 1.39,
                                    width: width * 1.39,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  'Here We Go!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  'An online earning app through which you can earn as mush as you want just by uploading an image.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildPageIndicator(),
                  ),
                  currentPage != numPages - 1
                      ? Container(
                          height: width * 0.22,
                          width: MediaQuery.of(context).size.width - 30,
                          margin: const EdgeInsetsDirectional.only(top: 30),
                          padding: EdgeInsets.all(height * (0.02 + 0.005)),
                          child: ElevatedButton(
                            onPressed: () {
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                              //  print(width);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'NEXT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      // ),
                      // )
                      : Container(
                          height: width * 0.22,
                          width: MediaQuery.of(context).size.width - 30,
                          margin: const EdgeInsetsDirectional.only(top: 30),
                          padding: EdgeInsets.all(height * (0.02 + 0.005)),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              //const Color(0xFF0278034),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 30,
                  ),
                  currentPage == 2
                      ? Container()
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                          },
                          child: const Center(
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
