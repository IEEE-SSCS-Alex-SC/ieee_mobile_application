import 'package:app/api/courses%20api/courses_response.dart';
import 'package:flutter/material.dart';
import '../api/courses api/courses_api.dart';
import 'course.dart';

enum listScreenState { initial, loading, loaded }

class CoursesProvider with ChangeNotifier {
  listScreenState state = listScreenState.initial;
  late List<Course> courseList;
  getCourses() async {
    courseList = await CourseAPI().getCoursesAPI();
    state = listScreenState.loaded;
    notifyListeners();
  }

  final List<Course> _courses = [
    Course(
        id: 1,
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        id: 2,
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        id: 3,
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        id: 4,
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        id: 5,
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012")
  ];
  // final List<Course> _courses = CourseAPI.getCourses();

  List<Course> get courses {
    return _courses;
  }
}
