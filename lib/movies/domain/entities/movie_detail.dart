import 'package:equatable/equatable.dart';
import 'package:movieapp/movies/domain/entities/genes.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final List<Genres> geners;
  final int id;
  final String overview;
  final String releaseDate;
  final int runtime;
  final String title;
  final String voteAverage;

  const MovieDetail(
      {required this.backdropPath,
      required this.geners,
      required this.id,
      required this.overview,
      required this.releaseDate,
      required this.runtime,
      required this.title,
      required this.voteAverage});

  @override
  List<Object> get props => [
        backdropPath,
        geners,
        id,
        overview,
        releaseDate,
        runtime,
        title,
        voteAverage
      ];
}