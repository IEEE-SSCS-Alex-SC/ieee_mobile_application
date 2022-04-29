import 'dart:convert' as convert;
import 'package:app/api/courses%20api/courses_response.dart';
import 'package:http/http.dart' as http;
import '../../data/course.dart';
import 'dart:developer';

class CourseAPI {
  Future<List<Course>> getCoursesAPI() async {
    String url =
        "https://gist.githubusercontent.com/AbdelrahmanSalem9/6b3b201e446efdd92ebb076563aa37fc/raw/db859d7b10457c4437a6d2bb3408e4f8ae00a39b/test";
    http.Response response = await http.get(Uri.parse(url));
    late CoursesResponse coursesResponse;
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      coursesResponse = CoursesResponse.fromJson(jsonResponse);
    }
    return coursesResponse.courses.toList();
  }
}
