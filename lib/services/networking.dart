import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
   final String url ;
   Map<String,String> headers = {
    'x-rapidapi-host' : 'vindecoder.p.rapidapi.com',
    'x-rapidapi-key' : '79eaae4939msh5ad344c72ff728dp1d7a47jsn7c6060d43b05',
  };

  NetworkHelper({@required this.url});

  Future getData() async{
    http.Response response = await http.get(url,headers: headers );
    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }else{
      print('Ohh bro, you have an error ${response.statusCode}');
    }
  }
}