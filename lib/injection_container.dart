
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty2/features/data/datasources/character_remote_data_source.dart';
import 'package:rick_and_morty2/features/data/repositories/character_repository_impl.dart';
import 'package:rick_and_morty2/features/domain/repositories/character_repository.dart';
import 'package:rick_and_morty2/features/domain/usecases/get_characters_use_case.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /*
   Use Cases
   */
  sl.registerLazySingleton(() => GetCharactersUseCase(sl()));

  /*
  Repository
   */
  sl.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(remoteDataSource: sl()));

  /*
  Data Source
   */

  sl.registerLazySingleton<CharacterRemoteDataSource>(() => CharacterRemoteDataSourceImpl());
}