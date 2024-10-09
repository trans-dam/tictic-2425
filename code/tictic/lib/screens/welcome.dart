import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/screens/home_screen.dart';
import 'package:tictic/style/colors.dart';
import 'package:tictic/style/others.dart';
import 'package:tictic/widgets/text_slider.dart';

import '../style/font.dart';
import '../style/spacings.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("ressources/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("ressources/icons/logo.svg",
                  height: MediaQuery.of(context).size.height * kLogoRatio,
                  semanticsLabel: 'Logo TicTic'),
              const SizedBox(
                height: kVerticalPaddingL,
              ),
              TextSlider(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kHorizontalPadding,
                      vertical: kVerticalPaddingS),
                  decoration: const BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(kBorderRadius),
                    ),
                  ),
                  child: const Text(
                    "Continuer sans compte",
                    style: kButtonStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
