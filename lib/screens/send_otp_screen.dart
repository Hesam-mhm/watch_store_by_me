import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store_by_me/gen/assets.gen.dart';
import 'package:watch_store_by_me/res/dimens.dart';
import 'package:watch_store_by_me/res/strings.dart';
import 'package:watch_store_by_me/route/names.dart';
import 'package:watch_store_by_me/widgets/app_text_field.dart';
import 'package:watch_store_by_me/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  SendOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.png.mainLogo.path)),
          const SizedBox(height: Dimens.small,),
          Padding(
            padding: const EdgeInsets.all(Dimens.medium),
            child: AppTextField(
              controller: controller,
              hint: AppStrings.hintPhoneNumber,
              lable: AppStrings.enterYourNumber,
              textInputType: TextInputType.number,
            ),
          ),
      MainButton(onPress: (){
        Navigator.pushNamed(context, Screens.getOtpScreen);
      }, title:AppStrings.sendOtpCode)
        ],
      ),
    );
  }
}
