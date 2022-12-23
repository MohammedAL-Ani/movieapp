part of 'movies_details_bloc.dart';

class MoviesDetailsState extends Equatable {
  const MoviesDetailsState({
    this.movieDetail,
    this.movieDetailsStateRequest = StateRequest.loading,
    this.movieDetailsMessage = "",
    this.recommendation = const [],
    this.recommendationStateRequest = StateRequest.loading,
    this.recommendationMessage = "",
  });

  final MovieDetail? movieDetail;
  final StateRequest movieDetailsStateRequest;
  final String movieDetailsMessage;
  final List<Recommendation> recommendation;
  final StateRequest recommendationStateRequest;
  final String recommendationMessage;

  MoviesDetailsState copyWith({
    MovieDetail? movieDetail,
    StateRequest? movieDetailsStateRequest,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    StateRequest? recommendationStateRequest,
    String? recommendationMessage,
  }) {
    return MoviesDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsStateRequest:
          movieDetailsStateRequest ?? this.movieDetailsStateRequest,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
      recommendation: recommendation ?? this.recommendation,
      recommendationStateRequest:
          recommendationStateRequest ?? this.recommendationStateRequest,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsStateRequest,
        movieDetailsMessage,
        recommendation,
        recommendationStateRequest,
        recommendationMessage,
      ];
}
