import 'package:app/compenents/list_view.dart';
import 'package:app/data/courses_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class CourseListView extends StatelessWidget {
  const CourseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courses = Provider.of<CoursesProvider>(context).courses;
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
      body: IeeeListView(
        items: courses,
      ),
    );
  }
}
