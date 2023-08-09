import 'dart:convert';

import 'package:http/http.dart' as http;
import 'models/user.dart';

class RestApiServices{
  String apiUrl = 'https://mocki.io/v1/ed0c6388-7a27-4c27-942b-f1b6b358178e';

  /////////Future method to Get all Users from API url ............(response or error)
  Future<List<User>> getUsers() async{

    final response = await http.get(Uri.parse(apiUrl));

    print(response.body);

    if(response.statusCode == 200){
        return getUsersList(response.body);
    }else{
      throw Exception('Unable to fetch data');
    }
  }

  //convert response body -> User object list
  List<User> getUsersList(String responseBody){
    final parseBody = json.decode(responseBody).cast<Map<String,dynamic>>();
    return parseBody.map<User>((json) => User.fromJson(json)).toList();
  }

}