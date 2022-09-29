import 'package:fifthapp/Screens/home_screen.dart';
import 'package:flutter/material.dart';

TextStyle myStyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    final usernameFeild = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final passwordFeild = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    );

    final myLoginButton = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.green,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          if (username == 'sus' && password == '123') {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen(username)));
          } else {
            print('Failed');
          }
        },
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Icon(
              Icons.supervised_user_circle,
              size: 100,
            ),
            SizedBox(height: 150),
            usernameFeild,
            SizedBox(height: 10),
            passwordFeild,
            SizedBox(height: 10),
            myLoginButton,
          ]),
        ),
      ),
    );
  }
}
