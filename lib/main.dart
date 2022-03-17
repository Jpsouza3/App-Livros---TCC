import 'package:flutter/material.dart';
import 'Home.dart';

import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',



      initialRoute: '/',

      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => Home(),
      },


    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('AppBar')),
      backgroundColor: const Color(0xFF316847),),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

class BookContainer extends StatelessWidget {
  const BookContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}