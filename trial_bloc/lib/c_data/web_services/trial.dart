import 'package:dio/dio.dart';

class myApi {
  static Future<String> fetchApiData() async {
    String rt = "";
    try {
      //-------------------
      final dio = Dio();
      final response = await dio.get(
          'https://api.themoviedb.org/3/trending/person/week?language=en-US',
          queryParameters: {
            'api_key': '213ad0e9f5a2f6b619c83d4dfc74b211',
          });
      // print(response.data['results']);
      if (response.statusCode == 200) {
        List<dynamic> rowResults = response.data['results'];
        List<Map<String, dynamic>> resultList = rowResults.map((e) {
          return e as Map<String, dynamic>;
        }).toList();
        // print('length: ${resultList.length}');
        // print("adult: ${resultList[1]['adult']}");
        // print("id: ${resultList[1]['id']}");
        // print("name: ${resultList[1]['name']}");
        // print("original_name: ${resultList[1]['original_name']}");
        // print("profile_path: ${resultList[1]['profile_path']}");
        rt = resultList[15]['profile_path'];
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e.toString());
    }
    return rt;
  }
}
