import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade800,
        title:Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          child: Text(
            'Go to menu',
            style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade800,
          ),
        ),
      ),
    );
  }
}
