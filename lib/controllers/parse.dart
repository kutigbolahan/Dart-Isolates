import 'dart:async';
import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:isolatesparsingjson/models/model.dart';

//class Parse extends ChangeNotifier{

  Future<List<Photo>> fetchPhotos(http.Client client)async{
   
    final response = await client.get('https://jsonplaceholder.typicode.com/photos');
    return compute(parsePhotos, response.body);
    
  }


   List<Photo> parsePhotos(String responseBody){
     final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
   }
 

