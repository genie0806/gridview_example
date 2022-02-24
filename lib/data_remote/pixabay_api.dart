import 'package:staggered_gridview_test/model/search_model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class PixaBayApi {
  static const baseUrl = 'https://pixabay.com/api/';

  Future<SearchModel> fetchSearchData(String searchKeyword) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=17828481-17c071c7f8eadf406822fada3&q=traval&image_type=photo'));
    Map<String, dynamic> jsonResponse = convert.jsonDecode(response.body);
    SearchModel searchData = SearchModel.fromJson(jsonResponse);
    return searchData;
  }
}
