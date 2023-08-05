import 'package:flutter/material.dart';
import 'package:watch_store_by_me/component/text_style.dart';
import 'package:watch_store_by_me/res/colors.dart';
import 'package:watch_store_by_me/res/dimens.dart';

ThemeData theme() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: MyStyles.hint,
          filled: true,
        
          fillColor: MaterialStateColor.resolveWith((states) {

            
            if (states.contains(MaterialState.focused)) {
              return const Color.fromARGB(255, 243, 243, 243);
            } else {
              return Colors.white;
            }


          }),
          contentPadding: const EdgeInsets.all(Dimens.medium),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: MyColors.borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: MyColors.focusedBorderColor)),
              ));
}
