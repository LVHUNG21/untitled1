// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LevanHung',
        theme: ThemeData(primarySwatch: Colors.red),
        home: const MyHomePage(title: 'Flutter'));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Image.asset('assets/images/waiting.png'),
            Text(
              "Taste Me",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Container(
                width: 300,
                margin: EdgeInsets.only(left: 5, right: 5),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.redAccent,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 4,
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Container(
                width: 300,
                margin: EdgeInsets.only(left: 5, right: 5),
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock, color: Colors.redAccent),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text('FORGET PASSWORD ?'),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.redAccent),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an Account?"),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                  style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(decoration: TextDecoration.underline)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
