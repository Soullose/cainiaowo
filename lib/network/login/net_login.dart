import 'dart:convert';

import 'package:cainiaowo/network/common/net_manager.dart';
import 'package:dio/dio.dart';

class CNWLoginNetManager {
  static Future<Map> login(String account, String password) async {
    if (account == null || password == null) {
      Response response = Response(statusCode: 404, data: {
        "errorCode": '-1',
        "errorMsg": 'account or password can not be null.'
      });
      return response.data;
    }
    Map<String, dynamic> queryParameters = {
      "mobi": '18648957777',
      "password": 'cn5123456'
    };
    Response response =
        await CNWNetManager.post('path', data: jsonEncode(queryParameters));
    return response.data;
  }
}
