import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewTwo extends StatelessWidget {
  List<String> data = [
    'bmw',
    'isusu',
    'allion',
    'wagon R',
    'defender',
    'toyota',
    'audi',
    'nissan',
    'dihatsu',
    'GTR'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.lime
            ),
            child: Center(
              child: Text(
                data[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.grey,
            height: 1,
          );
        },
      ),
    );
  }
}
