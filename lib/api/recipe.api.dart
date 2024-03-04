import 'dart:convert';

import 'package:fitness/models/reciepe_dart.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<ReciepeDart> getRecipe() async {
    var uri =
        Uri.http('www.themealdb.com', '/api/json/v1/1/categories.php', {});

    final response = await http.get(uri);
    Map<String,dynamic> data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['categories']) {
      _temp.add(i);
    }

    return ReciepeDart.fromJson(data);
  }
}
