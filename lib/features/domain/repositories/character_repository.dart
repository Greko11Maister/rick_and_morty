import 'package:dartz/dartz.dart';
import 'package:rick_and_morty2/core/error/failures.dart';
import 'package:rick_and_morty2/features/domain/entities/character.dart';

abstract class CharacterRepository {

  Future<Either<Failure, List<Character>>> list();

}