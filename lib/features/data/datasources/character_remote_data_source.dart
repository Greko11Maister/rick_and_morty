import 'dart:developer';

import 'package:rick_and_morty2/core/http/api_provider.dart';
import 'package:rick_and_morty2/features/data/models/character_model.dart';

abstract class CharacterRemoteDataSource {
 Future<List<CharacterModel>> list();
}

class CharacterRemoteDataSourceImpl extends ApiProvider implements CharacterRemoteDataSource {
  @override
  Future<List<CharacterModel>> list() async {
    try{
      final res = await dio.get("/character");
      return (res.data["results"] as List).map((json) => CharacterModel.fromJson(json)).toList();
    }catch(error){
      log("$error");
      throw error;
    }
  }

}