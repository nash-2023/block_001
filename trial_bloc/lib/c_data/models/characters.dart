// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../d_constants/strings.dart';

class Character {
  final int id;
  final bool adult;
  final String name;
  final String photoUrl;
  Character({
    required this.id,
    required this.adult,
    required this.name,
    required this.photoUrl,
  });
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
        id: (json['id'] == null) ? -1 : json['id'],
        adult: (json['adult'] == null) ? true : json['adult'],
        name: (json['name'] == null) ? "Donkihoty Flaminko" : json['name'],
        photoUrl: (json['profile_path'] == null)
            ? "https://placekitten.com/g/200/300"
            : MyStrings.generatePhotoUrl(json['profile_path']));
  }
}
