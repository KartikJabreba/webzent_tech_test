import 'dart:convert';

import 'package:http/http.dart';
import 'package:webzent_tech_test/postDataModel.dart';

class PostDataService {
  List<PostDataModel> _list;
  Future<List<PostDataModel>> getPostData() async {
    // String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
    var response =
        await get(Uri.https('jsonplaceholder.typicode.com', 'posts'));
    if (response.statusCode == 200) {
      var dataList = jsonDecode(response.body);
      for (int i = 0; i < dataList.length; i++) {
        Map<String, dynamic> map = dataList[i];
        _list.add(PostDataModel.fromJson(map));
      }
      return _list;
    } else
      throw Exception('Invalid Data Response');
  }
}
