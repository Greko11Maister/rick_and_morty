import 'package:dartz/dartz.dart';
import 'package:rick_and_morty2/core/error/failures.dart';
import 'package:rick_and_morty2/core/usecases/usecase.dart';
import 'package:rick_and_morty2/features/domain/entities/character.dart';
import 'package:rick_and_morty2/features/domain/repositories/character_repository.dart';

class GetCharactersUseCase implements UseCase<List<Character>, NoParams> {
  final CharacterRepository repository;

  GetCharactersUseCase(this.repository);

  @override
  Future<Either<Failure, List<Character>>> call(NoParams params) async {
    return repository.list();
  }
}
