/*
 Dependencia HTTP https://pub.dev/packages/http
 Fake API https://jsonplaceholder.typicode.com/

*/

import 'dart:convert';
import 'package:fake_api/models/users.dart';
import 'package:fake_api/models/posts.dart';
import 'package:http/http.dart' as http;

jsonGet() async {
  print('Get\n');

  String url = 'https://jsonplaceholder.typicode.com/users';
  
  try{
    var response = await http.get(Uri.parse(url));

    if(response.statusCode ==200){
    print('STATUSCODE: ${response.statusCode}');
    //print('BODY: ${response.body}');

    // DECODE
    List<dynamic> parsedJson = jsonDecode(response.body);
    print('ParsedJson: $parsedJson\n');
    var obj = Users.fromJson(parsedJson);

    // USO OBJETO
    print('USO OBJETO: ${obj.users!.map((e)=> e.address!.geo!.lat).toList()}\n');

    //ENCODE
    List<dynamic>? map = obj.toJson();
    String toJson = jsonEncode(map);
    print('toJson: $toJson');

    } else {
      throw Exception('Erro ao obter os dados: ${response.statusCode}');
    }

  } catch (e) {
    print('Exceção: $e');
  }
}

jsonPost() async {
  print('Post\n');
  String url = 'https://jsonplaceholder.typicode.com/posts';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'title' : 'Postagem de Vinícius',
    'body': 'Funcionou! Nâo sei como',
    'userId' : 1,
  };
  var obj = Posts.fromJson(parsedJson);

  //USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson = jsonEncode(obj);

  try {
    var response = await http.post(Uri.parse(url), body: toJson, headers: {"Content-type" : "application/json; charset=UTF-8"});
    if(response.statusCode == 201) {
      print('\nSTATUSCODE: ${response.statusCode} \n');
      print('\nBODY: ${response.body} \n');

    } else {
      throw Exception('Erro ao efetuar POST: \nSTATUSCODE: ${response.statusCode}');
    } 
  } catch (e) {
    print(e);
  }
}

jsonPut() async {
  print('Put\n');
  String url = 'https://jsonplaceholder.typicode.com/posts/1';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'id': 10,
    'title' : 'Postagem de Vinícius',
    'body': 'Funcionou! Nâo sei como',
    'userId' : 100,
  };
  var obj = Posts.fromJson(parsedJson);

  //USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson = jsonEncode(obj);

  try {
    var response = await http.put(Uri.parse(url), body: toJson, headers: {"Content-type" : "application/json; charset=UTF-8"});
    if(response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode} \n');
      print('\nBODY: ${response.body} \n');

    } else {
      throw Exception('Erro ao efetuar PUT: \nSTATUSCODE: ${response.statusCode}');
    } 
  } catch (e) {
    print(e);
  }
}

jsonPatch() async {
  print('Patch\n');
  String url = 'https://jsonplaceholder.typicode.com/posts/1';

  // DECODE
  Map<String, dynamic> parsedJson = {
    'id': 10,
    'title': 'Postagem de Vinícius',
    'userId': 100,
  };
  var obj = Posts.fromJson(parsedJson);

  //USO OBJETO
  print('USO OBJETO: ${obj.title}');

  // ENCODE
  String toJson = jsonEncode(obj);

  try {
    var response = await http.patch(Uri.parse(url), body: toJson, headers: {"Content-type": "application/json; charset=UTF-8"});
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode} \n');
      print('\nBODY: ${response.body} \n');
    } else {
      throw Exception('Erro ao efetuar PATCH: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

jsonDelete() async {
  print('Delete\n');
  String url = 'https://jsonplaceholder.typicode.com/posts/1';

  try {
    var response = await http.delete(Uri.parse(url));
    if (response.statusCode == 200) {
      print('\nSTATUSCODE: ${response.statusCode} \n');
      print('\nBODY: ${response.body} \n');
    } else {
      throw Exception('Erro ao efetuar DELETE: \nSTATUSCODE: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
  }
}

main() {
  //jsonGet();
  //jsonPost();
  //jsonPut();
  //jsonPatch();
  jsonDelete();
}