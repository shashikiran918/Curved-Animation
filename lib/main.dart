//@dart=2.9
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Curved Animation",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " This is Animation",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items:<Widget>[
          Icon(Icons.verified_user,size:20,color: Colors.black),
          Icon(Icons.add,size:20,color: Colors.black),
          Icon(Icons.list,size:20,color: Colors.black),
          Icon(Icons.favorite,size:20,color: Colors.black),
          Icon(Icons.exit_to_app,size:20,color: Colors.black),
        ],
        animationDuration: Duration(milliseconds: 200),
        index:2,
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          debugPrint("current index is $index");
        },
      ),
    );
  }
}
