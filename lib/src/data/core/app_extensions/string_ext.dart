import 'package:aidana/src/data/core/utils/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension StringExt on String {
  String? validateEmail() {
    if (EmailValidator.validate(this)) {
      return null;
    }
    return 'Please enter a valid email address';
  }

  String? validatePassword() {
    if (length >= 8) {
      return null;
    }
    return 'Minimum password length is 8';
  }

  Future<bool?> showErrorSnackBar() {
    return Fluttertoast.showToast(
      msg: this,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
