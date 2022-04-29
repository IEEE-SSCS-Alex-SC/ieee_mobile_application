// import 'package:app/api/courses%20api/meta_data.dart';

import '../../data/course.dart';

class CoursesResponse {
  // MetaData metaData = Null;
  List<Course> courses;
  CoursesResponse({required this.courses});

  static fromJson(Map<String, dynamic> json) {
    //todo add the metadata parsing
    CoursesResponse coursesResponse = CoursesResponse(courses: []);
    // coursesResponse.metaData = MetaData.fromJson(json['meta_data']);
    for (var c in json['data']) {
      coursesResponse.courses.add(Course.fromJson(c));
    }
    return coursesResponse;
  }
}
