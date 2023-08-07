import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Exaple1 extends StatefulWidget {
  const Exaple1({Key? key}) : super(key: key);

  @override
  State<Exaple1> createState() => _Exaple1State();
}

class _Exaple1State extends State<Exaple1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      height: 120,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 2.0,
              spreadRadius: 3.0
          ),
        ],
      ),
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
      ),
    );
  }
}
