import 'dart:convert' as convert;
import 'dart:io';
import 'package:app/api/courses%20api/courses_response.dart';
import 'package:http/http.dart' as http;
import '../../data/course.dart';
import 'dart:developer';

class APIResult {
  late dynamic data;
  String error = "";
}

class CourseAPI {
  Future<APIResult> getCoursesAPI() async {
    String url =
        "https://gist.githubusercontent.com/AbdelrahmanSalem9/6b3b201e446efdd92ebb076563aa37fc/raw/67661a050db26801383723cce08f6d7e582cf888/test";
    late CoursesResponse coursesResponse;
    APIResult result = APIResult();

    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        coursesResponse = CoursesResponse.fromJson(jsonResponse);
        result.data = coursesResponse.courses;
      }
    } on FormatException {
      result.error = "Invalid Data Format";
      //handle
    } on SocketException {
      result.error = "No Internet Connection";
      //handle
    } catch (exception) {
      result.error = "Unexpected Error";
      //handle
    }
    return result;
  }
}
