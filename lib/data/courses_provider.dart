import 'package:flutter/material.dart';

import 'course.dart';

class CoursesProvider with ChangeNotifier {
  final List<Course> _courses = [
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012"),
    Course(
        title: 'EMBEDDED ARM',
        imageUrl:
            'https://res.cloudinary.com/rs-designspark-live/image/upload/c_limit,w_595/f_auto/v1/article/What_is_an_embedded_system_9973b860b8142db0b5b4290e405d38cadb0cc242',
        date: "20/12/2012")
  ];

  List<Course> get courses {
    return _courses;
  }
}
