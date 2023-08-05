import 'package:flutter/material.dart';
import 'package:watch_store_by_me/component/text_style.dart';

class MainButton extends StatelessWidget {
  Function() onPress ;
  String title ;

   MainButton({super.key,required this.onPress , required this.title});

  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;

    return SizedBox(
height: size.height*.06,
width: size.width*.75,
      child: ElevatedButton(
        onPressed: onPress
        , 
        child: Text(title,style: MyStyles.buttonText,)),
    );
  }
}