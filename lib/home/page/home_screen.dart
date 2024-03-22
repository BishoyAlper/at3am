import 'package:at3am/core/assets_manager.dart';
import 'package:at3am/core/color_manger.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Search bar 
          Container(
            height: 60.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0)
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          listCard(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: ColorManager.white,
        ),
        backgroundColor: ColorManager.primary,
      ),
    );
  }
}

// Card List view Widget
Widget listCard(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 130,
      child: Card(
        elevation: 10,
        child: Row(
          children:  [
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0, right: 30.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageAssets.personImage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    boxShadow: [
                      BoxShadow(blurRadius: 7.0, color: Colors.black)
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Meal Title
                  Text(
                    'Meal',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                        fontSize: 25.0
                    ),
                  ),

                  //category prebaard
                  Text(
                    'Category: prapred foor',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 17.0
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Row(
                    children: [
                      Text(
                        'Bishoy Alper',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      Text(
                        '16 October, 2021',
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: ColorManager.primary,
                            fontSize: 12.0
                        ),
                      ),
                    ],
                  )


                ],
              ),
            )
          ],
        ),
      ),
    ),
  );

}