import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store_by_me/component/text_style.dart';
import 'package:watch_store_by_me/res/strings.dart';

import '../gen/assets.gen.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget{
   MainAppBar({super.key, required this.size});
  final Size size ;
  @override
  Widget build(BuildContext context) {
   
    return PreferredSize(
      preferredSize: Size(size.width,size.height*0.1),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(Assets.svg.back),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(AppStrings.register,style: MyStyles.title,),
            )
          ],
        ),
      ),       
       );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(size.height*.1);
  
 
}