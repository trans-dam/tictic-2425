import 'package:flutter/material.dart';
import 'package:tictic/style/others.dart';

import '../style/colors.dart';
import '../style/spacings.dart';

class Bullet extends StatelessWidget {
  final double width;

  final bool isActivated;

  const Bullet({
    required this.width,
    this.isActivated = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kVerticalPadding * 2),
      child: Container(
        height: 3,
        width: width,
        decoration: BoxDecoration(
          color: isActivated ? kMainColor : kBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            kShadow,
          ],
        ),
      ),
    );
    ;
  }
}
