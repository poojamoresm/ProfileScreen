import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Horizontal_Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          MyListView(
            img_location: 'profile.jpg',
            assetName: 'Ronny',
          ),
          MyListView(
            img_location: 'img1.jpg',
            assetName: 'Jelly',
          ),
          MyListView(
            img_location: 'img2.jpg',
            assetName: 'Mark',
          ),
          MyListView(
            img_location: 'img3.jpg',
            assetName: 'Monty',
          ),
          MyListView(
            img_location: 'img4.jpg',
            assetName: 'Mariya',
          ),
          MyListView(
            img_location: 'profile.jpg',
            assetName: 'img1',
          ),
        ],
      ),
    );
  }
}
class MyListView extends StatelessWidget {
  final String img_location;
  final String assetName;

  MyListView({this.img_location,this.assetName});
  @override
  Widget build(BuildContext context) {
    return Center(
          child:Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
               // backgroundImage: ExactAssetImage(img_location),
                child:
                Container(
                    height: 50.0,
                    width: 50.0,
                    margin: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                            width: 1.0,
                            style:BorderStyle.solid ,
                             color: Colors.white
                        ),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new AssetImage(img_location),
                        )
                    ),
                ),
              ),
              new Row(
                children: [new Text(assetName)],
              )
            ],
          )
      ) ;
  }
}

