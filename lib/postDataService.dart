import 'dart:convert';

import 'package:http/http.dart';

import 'postDataModel.dart';

class PostDataService {
  List<PostDataModel> _list = new List();
  Future<List<PostDataModel>> getPostData() async {
    var response;
    await get('https://jsonplaceholder.typicode.com/posts').then((value) {
      print(value.toString());
      response = value;
    });
    if (response.statusCode == 200) {
      var dataList = json.decode(response.body);
      for (int i = 0; i < dataList.length; i++) {
        Map<String, dynamic> map = dataList[i];
        _list.add(PostDataModel.fromJson(map));
      }
      return _list;
    } else
      throw Exception('Invalid Data Response');
  }
}
