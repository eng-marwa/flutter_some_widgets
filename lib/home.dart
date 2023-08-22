import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _controller = PageController();
  List<Container> containers = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
  int pageIndex = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          onPageChanged: (value) {
            pageIndex = value;
          },
          controller: _controller,
          scrollDirection: Axis.horizontal,
          children: containers),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
          onPressed: () {
            if (pageIndex != 0) {
              pageIndex--;
              _controller.jumpToPage(pageIndex);
            } else {
              _controller.jumpToPage(containers.length - 1);
            }
          },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(
          width: 16,
        ),
        FloatingActionButton(
          onPressed: () {
            if (pageIndex != containers.length - 1) {
              pageIndex++;
              _controller.jumpToPage(pageIndex);
            } else {
              _controller.jumpToPage(0);
            }
          },
          child: Icon(Icons.arrow_forward),
        ),
      ]),
    );
  }
}
