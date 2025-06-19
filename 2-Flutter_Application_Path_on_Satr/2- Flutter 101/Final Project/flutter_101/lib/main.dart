// Date: Tue, 7th of Jan 2025
// Abobaker Ahmed Khidir Hassan
// Course: Flutter 101
// Paltform: Satr
// Course Link: https://satr.codes/course/tbKEOEzUGW/view?course_path_id=OHarLRCHae

/*
    Final Project: Chellenge Building a Specific UI Design
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} // main

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Flutter 101'),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
            toolbarHeight: 100),
        body: home_body(), // see below this function
      ),
    );
  } // build

  // the home body:
  Widget home_body() {
    return Column(children: [
      OddRow(), // see below this fuction
      EvenRow(), // just changing the order of expandeds in it.
      OddRow(),
      EvenRow(),
      OddRow(),
      EvenRow(),
      OddRow(),
    ]);
  } // home_body

  // OddRow
  Widget OddRow() {
    return Expanded(
      child: Row(
        children: [
          expanded(Colors.black),
          expanded(Colors.white),
          expanded(Colors.black),
          expanded(Colors.white)
        ],
      ),
    );
  } // OddRow

  // EvenRow
  Widget EvenRow() {
    return Expanded(
      child: Row(
        children: [
          expanded(Colors.white),
          expanded(Colors.black),
          expanded(Colors.white),
          expanded(Colors.black),
        ],
      ),
    );
  } // EvenRow

  // The expanded (a square for each)
  Expanded expanded(Color color) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          "Hi",
          style: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        color: color,
      ),
    );
  } // expanded
} // MyApp
