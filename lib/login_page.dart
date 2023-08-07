import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  //init state function run at once
  //it use such as  call API etc ....
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


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
          child: SingleChildScrollView(
            child: Column(

          children: [

          Container(
          padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 0),
        width: 200,
        child: Image.asset("assets/image2.jpg"),
      ),

      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            //.............Text forms.....................................
            Container(
              child: TextFormField(
                controller: _usernameController,
                onChanged: (value){
                  print(value);
                },
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Name',
                  hintText: 'user name',
                ),
              ),
            ),

            Container(
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter your Passworrd',
                  hintText: 'password',
                ),
              ),
            ),

            Container(
              width:200,
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(

                onPressed: loginButtonClick,
                child: Text('Loin'),
                style:ElevatedButton.styleFrom(
                  primary:Colors.blue,
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
            ),

            //......login Button .........................................
          ],
        ),
      ),
      ],
    ),),


      ),
    );
  }


  void loginButtonClick(){

    if(_usernameController.text == "shiran" && _passwordController.text =="1234"){
      print("Login success");
    }else{
      print("Login faild");
    }

  }
}
