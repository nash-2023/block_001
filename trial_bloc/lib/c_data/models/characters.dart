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
    String picLink = json['profile_path'];
    return Character(
      id: json['id'],
      adult: json['adult'],
      name: json['name'],
      photoUrl: MyStrings.generatePhotoUrl(picLink),
    );
  }
}
