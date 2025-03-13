import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:lilac_mc_tst/core/constants/user_data/user_data.dart';

class HttpMethod {
  final userData = UserData();
  Future<dynamic> get(
      {required String url, Map<String, String>? headers}) async {
    try {
      final response = await http.get(Uri.parse(url),
          headers: headers ?? {'Authorization': 'Bearer ${userData.token}'});
      if (response.statusCode == 200) {
        debugPrint(response.body);
        return {'statusCode': response.statusCode, 'body': response.body};
      } else {
        debugPrint(response.body);
        return {'statusCode': response.statusCode, 'body': response.body};
      }
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
    }
  }

  Future<dynamic> post(
      {required String url, Map<String, String>? headers, Object? body}) async {
    try {
      final response = await http.post(Uri.parse(url),
          headers: headers ?? {'Authorization': 'Bearer ${userData.token}'},
          body: body);
      if (response.statusCode == 200) {
        debugPrint(response.body);
        return {'statusCode': response.statusCode, 'body': response.body};
      } else {
        debugPrint(response.body);
        return {'statusCode': response.statusCode, 'body': response.body};
      }
    } catch (e, s) {
      log(e.toString(), error: e, stackTrace: s);
    }
  }
}
