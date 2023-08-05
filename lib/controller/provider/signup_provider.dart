import 'package:final_api/controller/service/api_manager.dart';
import 'package:final_api/utils/custom_alerts.dart';
import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier {
  bool isLoading = false;

  signUp(context, {name, email, password}) async {
    isLoading = true;
    notifyListeners();

    if (name.isEmpty) {
      showSnack(context, "Please! Enter Name");
    } else if (email.isEmpty) {
      showSnack(context, "Please! Enter Email");
    } else if (password.isEmpty) {
      showSnack(context, "Please! Enter Password");
    } else {
      var body = {"name": name, "email": email, "password": password};

      var res = await ApiManager.signup(context, body);

      if (res != null) {
        //
      }

      isLoading = false;
    notifyListeners();
    }
  }
}
