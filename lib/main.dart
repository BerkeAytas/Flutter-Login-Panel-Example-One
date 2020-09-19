import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(decoration:
              BoxDecoration(image: 
                DecorationImage(image: AssetImage("assets/image2.png"),
                  fit: BoxFit.cover,
                )
              )
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              //color: Color(0xFFFc8e3f7),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                    child: TextField(
                      decoration:InputDecoration(
                        labelText: "Username",
                        border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(15.0),
                        ),
                          borderSide: new BorderSide(color: Colors.white70)
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                    child: TextField(
                      obscureText: true,
                      decoration:InputDecoration(labelText: "Password",
                        border: new OutlineInputBorder( borderRadius: const BorderRadius.all(
                          const Radius.circular(15.0),
                        ), 
                        borderSide: new BorderSide(color: Colors.black)
                        ),
                      )
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 330,
                    child: Padding(
                      padding: const EdgeInsets.only(top:8),
                      child: RaisedButton(
                        elevation: 8.0,
                        child: Text("Login",style: TextStyle(color:Colors.white,fontSize: 25),),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)
                        ),
                        onPressed: (){}
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:12),
                    child: Text("New User?"),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}