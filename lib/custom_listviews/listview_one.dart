import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewOne extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   Expanded(child: ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lime
          ),
          child: Center(
              child: Text('user 1234',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              )
          ),
        ),
      ],
    ),
    );
  }
}


