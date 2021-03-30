import 'package:rick_and_morty2/features/domain/entities/origin.dart';

class OriginModel extends Origin {
  OriginModel({String name, String url}) : super(name: name, url: url);

  factory OriginModel.fromJson(Map<String, dynamic> json){
    return OriginModel(
      name: json["name"],
      url: json["url"]
    );
  }
}
