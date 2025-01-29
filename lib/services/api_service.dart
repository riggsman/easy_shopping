import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiService {
  final String apiUrl = 'https://127.0.0.1:8000/api/v1/new-product';
  Map<String, String> headers ={
    'Content-Type': 'application/json',
    'Authorization': 'Bearer YOUR_AUTH_TOKEN'
  };

  Future<void> post (apiUrl, body,headers,parameter) async{
    Map<String,dynamic>_body = json.encode(body) as Map<String, dynamic>;
    try{
    var response = await http.post(apiUrl, body: _body, headers: headers);
    if(response.statusCode == 201){
      print('Product created successfully');
    }else{
      print('Error creating product: ${response.body}');
    }
  }catch(e){
    print('Error: $e');
  }

}

 Future<void> get (apiUrl, body,headers,parameter) async{
    Map<String,dynamic>_body = json.encode(body) as Map<String, dynamic>;
    try{
    var response = await http.post(apiUrl, body: _body, headers: headers);
    if(response.statusCode == 201){
      print('Product created successfully');
    }else{
      print('Error creating product: ${response.body}');
    }
  }catch(e){
    print('Error: $e');
  }

}
}