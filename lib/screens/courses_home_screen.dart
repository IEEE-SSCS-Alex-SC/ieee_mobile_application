import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'courses.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  final List _cor = ['one', 'two', 'three', 'four', 'five'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'courses',
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            child: ListView.builder(
                itemCount: _cor.length,
                itemBuilder: (context, index) {
                  return course();
                }),
          )),
    );
  }
}
