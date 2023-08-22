import 'package:flutter/material.dart';

import 'Item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Course> courses = [
    Course(name: 'Android', duration: 24, price: 1000),
    Course(name: 'IOS', duration: 20, price: 2000),
    Course(name: 'Flutter', duration: 30, price: 1500),
  ];
  late Course _selectedCourse;
  Set<Course> _selectedSet = {};
  List<DataColumn> cols = const [
    DataColumn(label: Text('Name')),
    DataColumn(label: Text('Duration')),
    DataColumn(label: Text('Price')),
    DataColumn(label: Text('')),
    DataColumn(label: Text('')),
  ];

  @override
  void initState() {
    super.initState();
    _selectedCourse = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          DropdownButton<Course>(
            value: _selectedCourse,
            items: courses
                .map((e) => DropdownMenuItem<Course>(
                      onTap: () {
                        setState(() {
                          courses.forEach(
                              (element) => element.color = Colors.black);
                          e.color = Colors.blue;
                        });
                      },
                      child: Text(
                        e.name,
                        style: TextStyle(color: e.color),
                      ),
                      value: e,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedCourse = value!;
              });
              _selectedSet.add(value!);
            },
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: DataTable(
                columns: cols,
                rows: _selectedSet
                    .map((e) => DataRow(cells: [
                          DataCell(e.isEdit? TextField():Text(e.name),showEditIcon: e.isEdit),
                          DataCell(showEditIcon: e.isEdit,
                            e.isEdit? TextField(): Text('${e.duration}'),
                          ),
                          DataCell(showEditIcon: e.isEdit,
                            e.isEdit? TextField():Text('${e.price}',),
                          ),
                          DataCell(
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _selectedSet.remove(e);
                                });
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          DataCell(
                            IconButton(
                              onPressed: () {
                              setState(() {
                                e.isEdit = !e.isEdit;
                                e.name = 'marwa';
                                e.price =0.0;
                                e.duration = 0;
                              });
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ]))
                    .toList()),
          )
        ]),
      ),
    );
  }
}
