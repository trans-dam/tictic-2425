import 'package:flutter/material.dart';
import 'package:tictic/style/spacings.dart';
import 'package:tictic/widgets/bullet.dart';

import '../style/others.dart';

class TextSlider extends StatefulWidget {
  TextSlider({super.key});

  @override
  State<TextSlider> createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  final _pageViewController =
      PageController(initialPage: 0, viewportFraction: 1);

  int idx = 0;

  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: PageView.builder(
            controller: _pageViewController,
            itemCount: _items.length,
            onPageChanged: (i) {
              setState(() {
                idx = i;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
                child: Text(_items[index]),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _items.map(
              (item) {
                int currentIdx = _items.indexOf(item);
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    debugPrint(currentIdx.toString());
                    _pageViewController.animateToPage(currentIdx,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeInOut);
                    setState(() {
                      idx = currentIdx;
                    });
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
                    child: Bullet(
                      width: (MediaQuery.of(context).size.width -
                              kHorizontalPaddingXXL) /
                          _items.length,
                      isActivated: currentIdx == idx,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
