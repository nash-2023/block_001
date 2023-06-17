import 'package:trial_bloc/c_data/models/characters.dart';

import '../repos/repos.dart';

class FakeWebService implements CharactersRepo {
  @override
  Future<List<Character>> fetchApiData() {
    List<Character> chrctrs = [
      Character(
        id: 0,
        adult: false,
        name: "Abdalla",
        photoUrl: "https://placekitten.com/g/200/300",
      ),
      Character(
        id: 1,
        adult: false,
        name: "Fathy",
        photoUrl: "https://placekitten.com/g/250/300",
      ),
      Character(
        id: 2,
        adult: false,
        name: "Ali",
        photoUrl: "https://placekitten.com/g/400/300",
      ),
      Character(
        id: 3,
        adult: false,
        name: "Attia",
        photoUrl: "https://placekitten.com/g/500/300",
      ),
      Character(
        id: 4,
        adult: false,
        name: "Ahmed",
        photoUrl: "https://placekitten.com/g/200/500",
      ),
    ];

    return Future.delayed(
      const Duration(seconds: 2),
      () => chrctrs,
    );
  }
}
