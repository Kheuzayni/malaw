import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malaw',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var platform = Theme.of(context).platform;

    print("Size : $size");
    print("Platform : $platform");
    return Scaffold(
      body:
      Container(
        /*height: 80.0,
        width: 150,*/
        height: size.height,
        width: size.width,
        //color: Theme.of(context).colorScheme.secondary,
        //color: Color.fromRGBO(90, 12, 100, 1.0),
        color: Colors.white,
        //margin: EdgeInsets.all(50),
        //padding: EdgeInsets.all(20),
        child: Center(
          /*child: Icon(
            Icons.house
          ),*/
          child: Image.asset(
            "images/cofee.jpg"
          )
        ),
      ),
    ) ;
  }
}