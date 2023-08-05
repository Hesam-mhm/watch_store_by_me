import 'package:flutter/material.dart';
import 'package:watch_store_by_me/route/names.dart';
import 'package:watch_store_by_me/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.red,
    child: Center(
      child: SizedBox(
        width: 200,
        height: 100,
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductScreen(),));
        }, child: Text("ssss")),
      ),
    ),
    );
  }
}