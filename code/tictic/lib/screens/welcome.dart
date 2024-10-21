import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/screens/home.dart';
import 'package:tictic/screens/register.dart';
import 'package:tictic/style/others.dart';
import 'package:tictic/widgets/btn.dart';
import 'package:tictic/widgets/text_slider.dart';

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
              const TextSlider(),
              Btn(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  Register(),
                    ),
                  );
                },
                text: "Continuer sans compte",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
