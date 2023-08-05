import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../component/text_style.dart';
import '../res/dimens.dart';


class BtmNavItem extends StatelessWidget {
  String iconSvgPath;
  String text;
  void Function() onTap;
  bool isActive;
  BtmNavItem({
    super.key,
    required this.iconSvgPath,
    required this.onTap,
    required this.text,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconSvgPath,
                color: isActive ? Colors.black : Colors.grey),
            const SizedBox(
              height: Dimens.small,
            ),
            Text(
              text,
              style: isActive ? MyStyles.btmNavActive : MyStyles.btmNavInActive,
            )
          ],
        ),
      ),
    );
  }
}