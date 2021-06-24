import 'package:flutter/material.dart';

class Vertical_Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      shrinkWrap: true,
      children: List.generate(20, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new AssetImage('img1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(20.0),),
            ),
          ),
        );
      },),
    );

  }
}