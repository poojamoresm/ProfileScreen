import 'package:flutter/material.dart';
import 'package:poojamoretask/Vertical_Listview.dart';
import 'package:poojamoretask/horizontal_listview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String _followers = "90";
  final String _following = "50.5K";
  final String _likes = "20M";


  Widget _buildCoverImage(Size screenSize) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: screenSize.height /4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          image: AssetImage('assets/img1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget _buildProfilePicture(){
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Container(
          width: 120.0,
          height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/profile.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(80.0),
              border: Border.all(
                  color: Colors.white,
                  width: 5.0
              )
          ),
        ),
      ),
    );
  }

  Widget _buildName(){
    return   Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Text("MARIA JORDEN",style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Followers", _followers),
          _buildStatItem("Following", _following),
          _buildStatItem("Likes", _likes),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      color: Colors.deepOrangeAccent,
      fontSize: 15.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.deepOrangeAccent,
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:  new Text("Profile",style: TextStyle(color: Colors.black),),
       leading: GestureDetector(
         onTap: (){},
         child: Icon(Icons.arrow_back_ios,color: Colors.black,),
       ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 15.0),
          child: GestureDetector(
            onTap: (){},
            child: Icon(Icons.more_vert,color: Colors.black,),
          ),)
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 350,
                  width: 400,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.grey,
                          spreadRadius: 0.5
                      )],
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          _buildCoverImage(screenSize),
                          _buildProfilePicture(),
                          Padding(
                            padding: const EdgeInsets.only(top: 180.0,left: 100),
                            child: _buildName(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 250.0),
                            child: _buildStatContainer(),
                          ),
                          ],
                      ),
                      SizedBox(height: 3.0,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Text("Followers",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                    new Text("SEE ALL",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 10.0),)
                  ],
                ),
              ),
              Container(
                height:100,
                padding: EdgeInsets.only(left: 8.0,right: 8.0),
                child: Horizontal_Listview()
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: new Row(
                  children: [
                    new Text("Photos",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                     ],
                ),
              ),
              new Container(
                height: 300,
                child: Vertical_Listview() ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
