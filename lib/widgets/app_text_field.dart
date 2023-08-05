import 'package:flutter/material.dart';
import 'package:watch_store_by_me/component/text_style.dart';
import 'package:watch_store_by_me/res/dimens.dart';

class AppTextField extends StatelessWidget {
  String lable;
  String hint;
  TextEditingController controller;
  Widget icon;
  TextInputType? textInputType;
  AppTextField(
      {super.key,
      required this.lable,
      required this.hint,
      required this.controller,
      this.icon = const SizedBox(),
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          lable,
          style: MyStyles.title,
        ),
        SizedBox(
          height: size.height * .07,
          width: size.width * .75,
          child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: icon,
                hintText: hint,
                hintStyle: MyStyles.hint,
                contentPadding: const EdgeInsets.all(
                  Dimens.medium,
                ),
              )),
        )
      ],
    );
  }
}
