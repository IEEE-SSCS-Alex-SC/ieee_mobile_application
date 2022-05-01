// ignore_for_file: must_be_immutable

import 'package:app/compenents/list_view.dart';
import 'package:app/data/courses_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/course.dart';

class CourseListView extends StatelessWidget {
  CourseListView({Key? key}) : super(key: key);
  static String routeName = "/courseListViewScreen";
  CoursesProvider provider = CoursesProvider();
  List<Course> courseList = [];
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<CoursesProvider>(context);

    if (provider.state == listScreenState.initial) {
      provider.getCourses();
      // ignore: prefer_const_constructors
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (provider.state == listScreenState.error) {
      return Container(
        color: Colors.white,
        child: Center(
          child: Text(
            provider.errorMessage,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    } else {
      courseList = provider.courseList;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: false,
        title: const Text(
          "Courses",
          style: TextStyle(
              color: Color(0xFFBA0C2F),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: IeeeListView(items: courseList),
    );
  }
}
/*

click course[0]

Navigator course[0]



$course.title
*/