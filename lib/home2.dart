import 'package:flutter/material.dart';

import 'Item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  String _selectedValue = '';
  String _selectedItem = 'Android';
  Color _selectedItemColor = Colors.black;
  List<Course> courses = [
    Course(name: 'Android',duration: 24),
    Course(name: 'IOS',duration: 20),
    Course(name: 'Flutter',duration: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Visibility(
            visible: isChecked,
            child: Image.network(
              'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg',
            ),
            maintainState: true,
            maintainAnimation: true,
            maintainSize: true,
          ),
          CheckboxListTile(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            title: Text('Show/Hide'),
            subtitle: Text('view image'),
          ),
          Divider(
            thickness: 2,
          ),
          RadioListTile<String>(
            value: 'Android',
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
            title: Text('Android'),
          ),
          RadioListTile(
            value: 'IOS',
            groupValue: _selectedValue,
            title: Text('IOS'),
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          RadioListTile(
            value: 'Flutter',
            title: Text('Flutter'),
            groupValue: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
          Divider(
            thickness: 2,
          ),
          DropdownButton<String>(
            value: _selectedItem,
            items: courses
                .map((e) => DropdownMenuItem(onTap: () {
                  setState(() {
                    courses.forEach((element) => element.color = Colors.black);
                    e.color = Colors.blue;
                  });
                },
                      child: Text(
                        e.name,
                        style: TextStyle(color: e.color),
                      ),
                      value: e.name,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value!;
              });
            },
          )
        ]),
      ),
    );
  }
}
/*
 Row(children: [
         Checkbox(value: isChecked, onChanged: (value) {
           setState(() {
             isChecked = value!;
           });
         },),
         Text('Show/Hide')
       ],)
 */

/*
  isChecked
              ? Image.network(
                  'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg',height: 300,)
              : Container(height: 300,),
 */
/*
     Visibility(
              visible: isChecked,
              child: Image.network(
                'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg',
                height: 300,
              ),replacement: Container(
              height: 300,
            ),
          ),
 */
/*
 [
              DropdownMenuItem(
                child: Text(
                  courses[0].name,
                  style: TextStyle(color: courses[0].color),
                ),
                value: 'android',
                onTap: () {
                  setState(() {
                    courses.forEach((element) => element.color = Colors.black);
                    courses[0].color = Colors.blue;
                  });
                },
              ),
              DropdownMenuItem(
                child: Text(
                  courses[1].name,
                  style: TextStyle(color: courses[1].color),
                ),
                value: 'ios',
                onTap: () {
                  setState(() {
                    courses.forEach((element) => element.color = Colors.black);

                    courses[1].color = Colors.blue;
                  });
                },
              ),
              DropdownMenuItem(
                child: Text(
                  courses[2].name,
                  style: TextStyle(color: courses[2].color),
                ),
                value: 'flutter',
                onTap: () {
                  setState(() {
                    courses.forEach((element) => element.color = Colors.black);

                    courses[2].color = Colors.blue;
                  });
                },
              ),
            ]
 */
