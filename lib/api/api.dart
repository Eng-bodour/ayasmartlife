import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Api {
  // Future<dynamic> get({required String uri}) async {
  //   http.Response response = await http.get(Uri.parse(uri));
  //   if (response.statusCode == 200) {
  //     return jsonDecode(response.body);
  //   } else {
  //     throw Exception(
  //         'there is a problem with status code ${response.statusCode}');
  //   }
  // }
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (json.decode(response.body)["code"] == "200") {
      return jsonDecode(response.body)["message"];
    } else {
      throw Exception(
          'there is a problem with status code ${json.decode(response.body)["code"] == "200"}');
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    String result = response.body;
    int idx = result.indexOf("{");
    int length = result.length;
    result = result.substring(idx, length);
    print(result);
    print(json.decode(result)["code"]);
    if (json.decode(result)["code"] == "200") {
      /*String data="";
      if(jsonDecode(result)["message"]=="done")
        data =jsonDecode(result)["message"] ;
      else
        Map<String, dynamic>  jsonDecode(result)["message"];*/
      //print("in json data is $data");
      return jsonDecode(result)["message"];
    } else {
      throw Exception(
          'there is a problem with status code ${json.decode(result)["code"] == "200"} with body ${jsonDecode(result)["message"]}');
    }
  }

  // Future<dynamic> post({
  //   required String url,
  //   @required dynamic body,
  //   @required String? token,
  // }) async {
  //   Map<String, String> headers = {};
  //   if (token != null) {
  //     headers.addAll({'Authorization': 'Bearer $token'});
  //   }

  //   http.Response response = await http.post(
  //     Uri.parse(url),
  //     body: body,
  //     headers: headers,
  //   );
  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> data = jsonDecode(response.body);
  //     return data;
  //   } else {
  //     throw Exception(
  //         'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
  //   }

  //   // body: {
  //   //   'name_client': 'مطعم',
  //   //   'name_enterprise': 'سمارت',
  //   //   'mobile': '056777',
  //   //   'type_job': 'عمل',
  //   //   'city': 'الرياض',
  //   //   'location': 'العليا',
  //   //   'date_create': '12 - 3 - 1993',
  //   //   'fk_user': '1',
  //   //   'date_transfer': '12 - 3 - 2021',
  //   //   'fk_regoin': ' 1',
  //   //   'type_client': 'النوع',
  //   // },
  // }
}
