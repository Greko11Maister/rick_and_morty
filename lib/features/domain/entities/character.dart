import 'package:equatable/equatable.dart';
import 'package:rick_and_morty2/features/domain/entities/origin.dart';

class Character extends Equatable {
  final int id;
  final String name;
  final String status;
  final String species;
  final String type;
  final String gender;
  final Origin origin;
  final Origin location;
  final String image;
  final List<String> episode;
  final String url;
  final DateTime created;

  Character(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  Character copyWith({
    int id,
    String name,
    String status,
    String species,
    String type,
    String gender,
    Origin origin,
    Origin location,
    String image,
    List<String> episode,
    String url,
    DateTime created,
  }) {
    return Character(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
        species: species ?? this.species,
        type: type ?? this.type,
        gender: gender ?? this.gender,
        origin: origin ?? this.origin,
        location: location ?? this.location,
        image: image ?? this.image,
        episode: episode ?? this.episode,
        url: url ?? this.url,
        created: created ?? this.created);
  }

  @override
  List<Object> get props => [id, name, status, species, type, gender, origin, location, image, episode, url, created];
}
