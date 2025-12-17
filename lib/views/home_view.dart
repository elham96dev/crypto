
import 'package:crypto_app/constant/color_constants.dart';
import 'package:crypto_app/views/crypto_card.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkGray94,
      appBar: AppBar(
        backgroundColor: darkGray96,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text("Crypto",
            style: TextStyle(
              fontSize: 28,
              color: gray10,
              fontWeight: FontWeight.bold,
              fontFamily: "crypto"
            ),
            ),
            SizedBox(
              width: 4,
            ),
            Text("Currency",
              style: TextStyle(
              fontSize: 26,
              color: gray10,
              fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 220,
              width: 420,
              child: PageView(
                controller: pageController,
                children: [
              CryptoCard(
                icon: CryptoFontIcons.BTC,
                title: "BTC",
                openDay: 24300.0,
                highDay: 22400.0,
                lowDay: 21100.0,
                ),
              CryptoCard(
                icon: CryptoFontIcons.USDT,
                title: "USDT",
                openDay: 24300.0,
                highDay: 22400.0,
                lowDay: 21100.0,
                ),
              CryptoCard(
                icon: CryptoFontIcons.ETH,
                title: "ETH",
                openDay: 24300.0,
                highDay: 22400.0,
                lowDay: 21100.0,
                ),
              ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
             SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.white,
                dotColor: gray3
              ),
              )
            ],
          ),
      ),
);
}
}



