import 'package:flutter/material.dart';
import 'package:watch_store_by_me/res/strings.dart';
import 'package:watch_store_by_me/route/names.dart';
import 'package:watch_store_by_me/widgets/app_avatar.dart';
import 'package:watch_store_by_me/widgets/app_text_field.dart';
import 'package:watch_store_by_me/widgets/main_app_bar.dart';
import 'package:watch_store_by_me/widgets/main_button.dart';

class RegisterUser extends StatelessWidget {
   RegisterUser({super.key});
TextEditingController controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size ;
    return SafeArea (
      child: Scaffold(
        appBar: MainAppBar(size: size),
        body: SizedBox(
          width: size.width,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppAvatar(),
              AppTextField(
                lable: AppStrings.nameLastName, 
                hint: AppStrings.hintNameLastName, 
                controller: controller),
              AppTextField(
                lable: AppStrings.homeNumber, 
                hint: AppStrings.hintPhoneNumber, 
                controller: controller),
              AppTextField(
                lable: AppStrings.address, 
                hint: AppStrings.hintAddress, 
                controller: controller),
              AppTextField(
                lable: AppStrings.postalCode, 
                hint: AppStrings.hintPostalCode, 
                controller: controller),
              AppTextField(
                lable: AppStrings.location, 
                hint: AppStrings.hintLocation, 
                icon: Icon(Icons.location_city),
                controller: controller),
                MainButton(onPress: (){
                  Navigator.pushNamed(context, Screens.mainScreen);
                }, title: AppStrings.next)
            ],
          ),
        ),
      ),
    );
  }
}