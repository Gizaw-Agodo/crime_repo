import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  String baseUrl = 'http://10.0.2.2:3000';
  var logger = Logger();


  Future <dynamic> get(String url ) async{
    var response = await http.get(Uri.parse(baseUrl+url));
    logger.i(response.body);
    logger.i(response.statusCode);
  }


  Future <dynamic> post(String url , Map<String,String>body) async{
      var response = await http.post(
        Uri.parse(baseUrl+url),
        headers: {"Content.type":"application/json"},
        body:body,);
        logger.i(response.body);
        logger.i(response.statusCode);
        return response;

  }
}