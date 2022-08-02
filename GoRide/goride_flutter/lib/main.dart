// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //   });
  // }
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/LoginSignup.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 120),
              Text(
                "Prijava",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(height: 12),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  hintText: "Unesite korisnicko ime",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 5),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.white.withOpacity(0.2),
                  hintText: "Unesite lozinku",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  onPressed: () => {print(username.text + "/" + password.text)},
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                    backgroundColor: Colors.white,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () => {},
                child: Text(
                  "Nemate račun ?",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              SizedBox(height: 100),
              Image(
                image: AssetImage('assets/Logo2.png'),
              ),
              Text(
                "Razvoj softvera 2 - FIT Mostar\n Semirnarski rad - Emir Ibrisimovic\n2022",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.8), fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: _incrementCounter,
    //   tooltip: 'Increment',
    //   child: const Icon(Icons.add),
    // ), // This trailing comma makes auto-formatting nicer for build methods.
  }
}
