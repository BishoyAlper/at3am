import 'package:at3am/core/color_manger.dart';
import 'package:at3am/home/page/add_food.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'HomeScreen',
          style: TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => AddFoodScreen(),));
        },
        child: Icon(Icons.add, color: ColorManager.white,),
        backgroundColor: ColorManager.primary,
      ),
    );
  }
}
