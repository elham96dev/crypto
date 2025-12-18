import 'dart:convert';
import 'package:crypto_app/constant/url_constant.dart';
import 'package:http/http.dart' as http;



class NetworkService {
  const NetworkService();

  Future<dynamic> getData({required String url}) async {
    http.Response response = await http.get(Uri.parse(priceUrl));
    if(response.statusCode == 200) {
      //ok
      final body = response.body;
      final data = jsonDecode(body);
      return data;
    } else {
      print(response.statusCode);
    }
  }
}