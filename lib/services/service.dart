import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_oauth2/models/register_model.dart';
import 'package:http/http.dart' as http;

class Service {
  final String baseUrl = 'https://10.0.2.2:5001/api/Accounts/signupasync';
  final dio = Dio();

  Future<UserRegisterModel?> loginCall({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String passwordConfirm,
    required String phoneNumber,
    required String clientId,
    required String clientSecret,
    required String birthDay,
    required int roleName,
    required String expiresDate,
    required Map<dynamic, Object> createPasswordRequest,
    required Map<String, Object> createMailAddressRequest,
    required Map<String, Object> createPhoneRequest,
    required List<Map<String, Object>> createUserRoleRequest,
  }) async {
    Map<String, dynamic> json = {
      "clientId": "6F24F2C3-CBA0-442F-98BB-41F44DA76C39",
      "clientSecret": "6Qzet3f9wFThzGfa",
      "userName": username,
      "firstName": firstName,
      "lastName": lastName,
      "birthDay": "2022-08-23T06:03:18.533Z",
      "createPasswordRequest": {
        "password": password,
        "passwordConfirm": passwordConfirm,
      },
      "createMailAddressRequest": {
        "mailAddress": email,
      },
      "createPhoneRequest": {
        "phoneNumber": phoneNumber,
      },
      "createUserRoleRequest": [
        {
          "roleName": 0,
          "expiresDate": "2022-08-23T06:03:18.533Z",
        }
      ]
    };
    var response = await http.post(Uri.parse(baseUrl),
        headers: {'content-Type': 'application/json'}, body: jsonEncode(json));
    if (response.statusCode == 200) {
      var result = UserRegisterModel.fromJson(jsonDecode(response.body));
      log('Gelen Response => ${response.body}');
      return result;
    } else {
      throw ('Bir Sorun Meydana Geldi ${response.statusCode}');
    }
  }
}
