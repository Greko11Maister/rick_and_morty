import 'package:rick_and_morty2/features/data/models/character_model.dart';

abstract class CharacterRemoteDataSource {
 Future<List<CharacterModel>> list();
}

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {
  @override
  Future<List<CharacterModel>> list() async {
    try{

    }catch(error){
      throw error;
    }
  }

}