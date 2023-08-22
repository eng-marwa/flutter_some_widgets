import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Container(
              height: 250,
              color: Colors.red,
            )),
        Expanded(
            child: Container(
          height: 250,
          color: Colors.green,
        )),
        Expanded(
            flex: 3,
            child: Container(
              height: 250,
              color: Colors.blue,
            )),
        Expanded(
            child: Container(
          height: 250,
          color: Colors.deepOrange,
        )),
        Expanded(
            child: Container(
          height: 250,
          color: Colors.indigo,
        )),
      ]),
    );
  }
}
/*
SingleChildScrollView(
      child: Column(children: [
        Container(height: 250,color: Colors.red,),
        Container(height: 250,color: Colors.green,),
        Container(height: 250,color: Colors.blue,),
        Container(height: 250,color: Colors.deepOrange,),
 */
