import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_oauth2/screens/login.dart';
import 'package:flutter_oauth2/screens/splash.dart';
import 'package:flutter_oauth2/services/service.dart';
import 'package:flutter_oauth2/utils/component.dart';
import 'package:grock/grock.dart';
import 'package:flutter_oauth2/models/register_model.dart';

class SignUpRiverpod extends ChangeNotifier {
  final service = Service();
  TextEditingController username = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  void fetch() {
    loadingPopup();
    service.loginCall(
        clientId: "6F24F2C3-CBA0-442F-98BB-41F44DA76C39",
        clientSecret: "6Qzet3f9wFThzGfa",
        username: username.text,
        firstName: firstName.text,
        lastName: lastName.text,
        birthDay: "2022-08-23T06:03:18.533Z",
        password: password.text,
        passwordConfirm: passwordConfirm.text,
        email: email.text,
        phoneNumber: phoneNumber.text,
        roleName: 0,
        expiresDate: "2022-08-23T06:03:18.533Z",
        createMailAddressRequest: {
          "mailAddress": email,
        },
        createPasswordRequest: {
          "password": password,
          "passwordConfirm": passwordConfirm,
        },
        createPhoneRequest: {
          "phoneNumber": phoneNumber,
        },
        createUserRoleRequest: [
          {"roleName": 0, "expiresDate": "2022-08-23T06:03:18.533Z"}
        ]).then((value) {
      if (value != null) {
        Grock.back();
        Grock.toRemove(Splash());
      } else {
        Grock.back();
        Grock.snackBar(title: 'Hata', description: 'Bir Hata Meydana Geldi');
      }
    });
  }
}
