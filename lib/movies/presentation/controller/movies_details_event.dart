part of 'movies_details_bloc.dart';

abstract class MoviesDetailsEvent extends Equatable {
  const MoviesDetailsEvent();
}

class GetMovieDetailsEvent extends MoviesDetailsEvent {
  final int id;

  const GetMovieDetailsEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class GetMovieRecommendationEvent extends MoviesDetailsEvent {
  final int idRecommendation;

  const GetMovieRecommendationEvent(this.idRecommendation);

  @override
  List<Object?> get props => [idRecommendation];
}
