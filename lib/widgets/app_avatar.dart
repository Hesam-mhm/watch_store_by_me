import 'package:flutter/material.dart';
import 'package:watch_store_by_me/component/text_style.dart';
import 'package:watch_store_by_me/gen/assets.gen.dart';
import 'package:watch_store_by_me/res/dimens.dart';
import 'package:watch_store_by_me/res/strings.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            Assets.png.avatar.path
          ),
        ),
        SizedBox(height: Dimens.small,),
        Text(AppStrings.chooseProfileImage,style: MyStyles.title,)
      ],
    );
  }
}