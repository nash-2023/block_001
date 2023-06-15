//
//
//
//
//

const photoBaseUrl = "https://image.tmdb.org/t/p/w500/";
String generatePhotoUrl(String pp) {
  return "https://image.tmdb.org/t/p/w500${pp}";
}

const homeScreen = '/';
const charDetails = '/char_details';


/*

http GET 'https://api.themoviedb.org/3/trending/person/day?language=en-US' \
  Authorization:'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMTNhZDBlOWY1YTJmNmI2MTljODNkNGRmYzc0YjIxMSIsInN1YiI6IjY0OGFkN2FmNTU5ZDIyMDBmZjBmMmM5MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4Ryfj9_MNLjp7aV9WCOOKIeG0Kxa6r2ck9oefX4tB3U' \
  accept:application/json

 */