import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListviewThree extends StatelessWidget{

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
          return ListTile(
            leading: Icon(Icons.car_rental),
            title: Text(data[index],style: TextStyle(color: Colors.black ,fontSize: 19)),
            subtitle:Text('Call Now : 0777742336'),
            trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.call , color: Colors.green),),
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