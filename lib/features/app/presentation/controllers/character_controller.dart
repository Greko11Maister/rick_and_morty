import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty2/core/usecases/usecase.dart';
import 'package:rick_and_morty2/features/domain/entities/character.dart';
import 'package:rick_and_morty2/features/domain/usecases/get_characters_use_case.dart';
import 'package:meta/meta.dart';

class CharacterController extends GetxController {
  final GetCharactersUseCase _getCharactersUseCase;
  RxBool isLoading = false.obs;
  RxList<Character> characters = <Character>[].obs;

  CharacterController({@required GetCharactersUseCase getCharactersUseCase})
      : assert(getCharactersUseCase != null),
        _getCharactersUseCase = getCharactersUseCase;

  void loadData() async  {
    this.isLoading.value = true;
    final res = await _getCharactersUseCase.call(NoParams());

    res.fold((l) {
      Get.snackbar("Error", l.toString(), backgroundColor: Colors.red, colorText: Colors.white);
      this.isLoading.value = false;
    }, (r) {
      this.characters.addAll(r);
      this.isLoading.value = false;
    });

  }
}
