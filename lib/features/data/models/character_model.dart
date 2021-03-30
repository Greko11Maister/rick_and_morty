import 'package:rick_and_morty2/features/data/models/origin_model.dart';
import 'package:rick_and_morty2/features/domain/entities/character.dart';

class CharacterModel extends Character {
  CharacterModel({
    int id,
    String name,
    String status,
    String species,
    String type,
    String gender,
    OriginModel origin,
    OriginModel location,
    String image,
    List<String> episode,
    String url,
    DateTime created,
  }) : super(
    id: id,
    name: name,
    status: status,
    species: species,
    type: type,
    gender: gender,
    origin: origin,
    location: location,
    image: image,
    episode: episode,
    url: url,
    created: created
  );

  factory CharacterModel.fromJson(Map<String, dynamic> json){
    return CharacterModel(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      gender: json["gender"],
      origin: OriginModel.fromJson(json["origin"]),
      location: OriginModel.fromJson(json["location"]),
      image: json["image"],
      episode: (json["episode"] as List).map<String>((e) => e).toList(),
      url: json["url"],
      created: DateTime.parse(json["created"])
    );
  }
}
