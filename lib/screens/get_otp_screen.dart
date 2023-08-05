import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store_by_me/component/text_style.dart';
import 'package:watch_store_by_me/gen/assets.gen.dart';
import 'package:watch_store_by_me/res/dimens.dart';
import 'package:watch_store_by_me/res/strings.dart';
import 'package:watch_store_by_me/route/names.dart';
import 'package:watch_store_by_me/widgets/app_text_field.dart';
import 'package:watch_store_by_me/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  GetOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(Assets.png.mainLogo.path)),
         const SizedBox(height: Dimens.medium,),
         const Text(AppStrings.otpCodeSendFor,style: MyStyles.title,),
         const Text(AppStrings.wrongNumberEditNumber,style: MyStyles.blueTitle,),


          const SizedBox(height: Dimens.medium,),
          Padding(
            padding: const EdgeInsets.all(Dimens.medium),
            child: AppTextField(
              controller: controller,
              hint: AppStrings.hintVerificationCode,
              lable: AppStrings.enterVerificationCode,
              textInputType: TextInputType.number,
            ),
          ),
      MainButton(onPress: (){
Navigator.pushNamed(context, Screens.registerUser);

      }, title:AppStrings.next)
        ],
      ),
    );
  }
}
