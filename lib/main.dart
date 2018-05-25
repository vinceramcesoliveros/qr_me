import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello World App",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorBrightness: Brightness.dark,
        primaryColor: Colors.teal,
      ),
    );
  }
}


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              new Text("QR Me",style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Username"
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Password"
              ),
              obscureText: true,
            ),
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical:32.0),
            child: RaisedButton(
              child: Text("Log in"),
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
          )
          ],
        ),
      )
    );
  }
}
