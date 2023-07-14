class MyStrings {
  static const String apiBaseUrl =
      "https://api.themoviedb.org/3/trending/person/week?language=en-US";
  static const String apiKey = "213ad0e9f5a2f6b619c83d4dfc74b211";
  static const homeScreen = '/';
  static const charDetails = '/char_details';

  static String generatePhotoUrl(String pp) {
    return "https://image.tmdb.org/t/p/w500$pp";
  }
}
/*

http GET 'https://api.themoviedb.org/3/trending/person/day?language=en-US' \
  Authorization:'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMTNhZDBlOWY1YTJmNmI2MTljODNkNGRmYzc0YjIxMSIsInN1YiI6IjY0OGFkN2FmNTU5ZDIyMDBmZjBmMmM5MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4Ryfj9_MNLjp7aV9WCOOKIeG0Kxa6r2ck9oefX4tB3U' \
  accept:application/json

 */