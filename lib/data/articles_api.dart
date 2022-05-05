import 'dart:convert' as convert;
import 'dart:io';

import 'package:app/constants.dart';
import 'package:http/http.dart' as http;

import 'package:app/data/article.dart';

class Faliure {
  int code;
  String message;
  Faliure({
    required this.code,
    required this.message,
  });
}

class APIResult {
  dynamic data;
  Faliure? faliure;
  APIResult({
    this.data,
    this.faliure,
  });
}

class ArticlesApi {
  var r;

  Future<APIResult> getAllArticles() async {
    APIResult apiResult = APIResult();
    late Response articles;
    try {
      var url = Uri.https(
          'ieeeswalexsc.herokuapp.com', '/api/articles', {'q': '{http}'});

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        articles = Response.fromJson(jsonResponse);
        apiResult.data = articles.data;
      } else {
        apiResult.faliure =
            Faliure(code: response.statusCode, message: "Error in server");
      }
    } on SocketException {
      Faliure(code: sokectCode, message: "Check your internet connection");
    } on FormatException {
      Faliure(code: formatCode, message: "Problem in retrieving data");
    } catch (exception) {
      Faliure(code: generalCode, message: "ERROR");
    }
    return apiResult;
  }

  Future<APIResult> getArticleById(int articleID) async {
    APIResult apiResult = APIResult();
    late ArticleResponse articleResponse;
    try {
      var url = Uri.https('ieeeswalexsc.herokuapp.com',
          '/api/articles/$articleID', {'q': '{http}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // print(response.body);
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        r = jsonResponse["data"];
        articleResponse = ArticleResponse.fromJson(r);

        apiResult.data = articleResponse;
        print(articleResponse);
      } else {
        apiResult.faliure =
            Faliure(code: response.statusCode, message: "Error in server");
      }
    } on SocketException {
      Faliure(code: sokectCode, message: "Check your internet connection");
    } on FormatException {
      Faliure(code: formatCode, message: "Problem in retrieving data");
    } catch (exception) {
      Faliure(code: generalCode, message: "ERROR");
    }
    return apiResult;
  }
}
