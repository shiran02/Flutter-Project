import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Login Page'),
        leading: const Icon(Icons.account_balance ,
            color: Colors.pink,),
      ),

      body: Container(
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
        ),
    );
  }
}
