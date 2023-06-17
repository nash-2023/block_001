// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:trial_bloc/d_constants/strings.dart';
import '../models/characters.dart';
import '../repos/repos.dart';

class CharactersWebServices implements CharactersRepo {
  @override
  Future<List<Character>> fetchApiData() async {
    List<Character> chrctrs = [];
    try {
      //-------------------
      final response = await Dio().get(
        apiBaseUrl,
        queryParameters: {'api_key': apiKey},
      );
      // print(response.data['results']);
      if (response.statusCode == 200) {
        List<dynamic> rowResults = response.data['results'];
        chrctrs = rowResults.map((e) => Character.fromJson(e)).toList();
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e.toString());
    }
    return chrctrs;
  }
}

/*
List<Map<String, dynamic>> resultList = rowResults.map((e) {
          return e as Map<String, dynamic>;
        }).toList();
        chrctrs = resultList.map((e) => Character.fromJson(e)).toList();

*/

 // print('length: ${resultList.length}');
        // print("adult: ${resultList[1]['adult']}");
        // print("id: ${resultList[1]['id']}");
        // print("name: ${resultList[1]['name']}");
        // print("original_name: ${resultList[1]['original_name']}");
        // print("profile_path: ${resultList[1]['profile_path']}");
        // rt = resultList[1]['profile_path'];