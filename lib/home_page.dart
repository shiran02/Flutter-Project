import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/login_page.dart';

import 'custom_listviews/listview_three.dart';
import 'custom_listviews/listview_two.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key , required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> data = ['bmw','isusu','allion','wagon R','defender','toyota','audi','nissan','dihatsu','GTR'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade800,
        title:Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('${widget.username}',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),

            ListviewThree(),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                child: Text(
                  'Go to menu',
                  style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder:(BuildContext context)=> LoginPage())
                  );
                },

                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade800,
                ),


              ),
            ),

          ]
        ),
      ),
    );
  }
}
