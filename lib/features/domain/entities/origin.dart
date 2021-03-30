import 'package:equatable/equatable.dart';

class Origin extends Equatable{
  final String name;
  final String url;

  Origin({this.name, this.url});

  Origin copyWith({
  String name, String url
}){
    return Origin(
      name: name ??  this.name,
      url: url ??  this.url
    );
  }
  @override
  List<Object> get props => [name, url];

}