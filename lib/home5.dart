import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.deepOrange, width: 5),
            // color: Colors.blue,
            gradient:
                LinearGradient(colors: [Color(0xFFf12711), Color(0xFFf5af19)]),
            image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.3,
                image: NetworkImage(
                    'https://www.southernliving.com/thmb/t4CDcQzE1dJvfCt2VTHt3yRoCNc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/valentine-bouquet-gettyimages-55949391-2000-d675e30abd0243f1bf1d13ecb212d45b.jpg'))),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Text(
          'Hello',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
