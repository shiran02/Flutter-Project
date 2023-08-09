import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/home_page.dart';
import 'package:login/home_pagetwo.dart';

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
        backgroundColor: Colors.amber.shade800,
        title: Text('Login Page'),
        leading: const Icon(
          Icons.account_balance,
          color: Colors.white,
        ),
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
                        color: Colors.amber.shade800,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
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
                        onChanged: (value) {
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
                      width: 200,
                      margin: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: loginButtonClick,
                        child: Text('Loin'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amber.shade800,
                          textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),

                    //......login Button .........................................
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void loginButtonClick() {
    if (_usernameController.text == "shiran" &&
        _passwordController.text == "1234") {
      print("Login success");
   //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(username:_usernameController.text)));
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageTwo()));
    } else {
      print("Login faild");
      showAlertDialog(context);

    }
  }



  showAlertDialog(BuildContext context){

    Widget okButton = ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text('Ok'),
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text('Error'),
      content: Text('Wrong username or password'),
      actions: [
        okButton
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }
}
