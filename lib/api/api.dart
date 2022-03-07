import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String uri}) async {
    http.Response response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? taken,
  }) async {
    Map<String, String> headers = {};
    if (taken != null) {
      headers.addAll({'Authorization': 'Bearer $taken'});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }

    // body: {
    //   'name_client': 'مطعم',
    //   'name_enterprise': 'سمارت',
    //   'mobile': '056777',
    //   'type_job': 'عمل',
    //   'city': 'الرياض',
    //   'location': 'العليا',
    //   'date_create': '12 - 3 - 1993',
    //   'fk_user': '1',
    //   'date_transfer': '12 - 3 - 2021',
    //   'fk_regoin': ' 1',
    //   'type_client': 'النوع',
    // },
  }
}