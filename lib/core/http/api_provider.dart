 import 'package:dio/dio.dart';

class  ApiProvider {
  final String _baseUrl = "https://rickandmortyapi.com/api";
  Dio dio;

  ApiProvider(){
    dio = Dio(BaseOptions(baseUrl: _baseUrl));
    // Aqui puedo agregar los interceptores....
  }
 }