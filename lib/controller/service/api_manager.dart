import 'dart:convert';

import 'package:final_api/controller/service/endpoints.dart';
import 'package:final_api/utils/custom_alerts.dart';
import 'package:http/http.dart' as http;

class ApiManager {

  static signup(context,body) async{
    try {
      var url = Uri.parse(AppURL.BASE_URL + AppURL.signup);
    var response =  await http.post(url,body: body);
    var res = jsonDecode(response.body);
    showSnack(context, res["message"]);
    return res;
    } catch (e) {
      showSnack(context, e.toString());
    }
  }
}



// UI     Provder       API