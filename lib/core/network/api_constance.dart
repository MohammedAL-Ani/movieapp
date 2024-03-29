class ApiConstance {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "0d69d532a3a91cd2dfd151f0b4ab748a";

  static const String nowPlayingMoviePath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviePath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviePath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";
  static String movieDetailsPath(int movieID) =>
      "$baseUrl/movie/$movieID?api_key=$apiKey";
  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String imgPath) {
    return '$baseImageUrl$imgPath';
  }
}
