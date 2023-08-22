import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
    );
  }

  Widget pages() {
    switch (pageIndex) {
      case 0:
        return Container(
          color: Colors.red[100],
        );
      case 1:
        return Container(
          color: Colors.green[100],
        );
      case 2:
        return Container(
          color: Colors.deepPurple[100],
        );
      default:
        return Container();
    }
  }
}
