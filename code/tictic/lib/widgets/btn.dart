import 'package:flutter/material.dart';
import 'package:tictic/style/spacings.dart';

import '../style/colors.dart';
import '../style/fonts.dart';
import '../style/others.dart';

class Btn extends StatelessWidget {
  const Btn({this.onTap, required this.text, super.key});

  final GestureTapCallback? onTap;

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: kVerticalPaddingS, horizontal: kHorizontalPadding),
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
          boxShadow: [kShadow],
        ),
        child: Text(
          text,
          style: kButtonStyle,
        ),
      ),
    );
  }
}
