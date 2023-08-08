import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationToLoginScreen(context);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade600,
      height: 230,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 280),
            child: Image.asset("assets/image.jpg"),
          ),


          // Container(
          //   width: 200,
          //   margin: EdgeInsets.only(bottom: 50),
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          //     },
          //     child: Text(
          //       'Go to menu',
          //       style: TextStyle(fontSize: 23, color: Colors.black,fontWeight: FontWeight.bold),
          //     ),
          //     style: ElevatedButton.styleFrom(
          //       primary: Colors.blue.shade800,
          //     ),
          //   ),
          // ),


        ],
      ),
    );
  }

  void navigationToLoginScreen(BuildContext context){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));
    });
  }
}
