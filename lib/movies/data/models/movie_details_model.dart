import 'package:movieapp/movies/data/models/geners_model.dart';

import '../../domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runtime,
      required super.title,
      required super.voteAverage});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          genres: List<GenresModel>.from(
              json["genres"].map((x) => GenresModel.fromJson(x))),
          backdropPath: json["backdrop_path"],
          id: json["id"],
          title: json["title"],
          overview: json["overview"],
          runtime: json["runtime"],
          voteAverage: json["vote_average"],
          releaseDate: json["release_date"]);
}
