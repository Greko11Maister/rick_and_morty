import 'package:dartz/dartz.dart';
import 'package:rick_and_morty2/core/error/failures.dart';
import 'package:rick_and_morty2/features/data/datasources/character_remote_data_source.dart';
import 'package:rick_and_morty2/features/domain/entities/character.dart';
import 'package:rick_and_morty2/features/domain/repositories/character_repository.dart';
import 'package:meta/meta.dart';
class CharacterRepositoryImpl implements CharacterRepository{

  final CharacterRemoteDataSource remoteDataSource;

  CharacterRepositoryImpl({@required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Character>>> list() async {
    try{
      final res =  await remoteDataSource.list();
      return Right(res);
    }catch(error){
     return  Left(ServerFailure(message: error.toString()));
    }
  }

}