part of 'movies_details_bloc.dart';

class MoviesDetailsState extends Equatable {
  const MoviesDetailsState(
      {this.movieDetail,
      this.movieDetailsStateRequest = StateRequest.loading,
      this.movieDetailsMessage = ""});

  final MovieDetail? movieDetail;
  final StateRequest movieDetailsStateRequest;
  final String movieDetailsMessage;

  MoviesDetailsState copyWith({
    MovieDetail? movieDetail,
    StateRequest? movieDetailsStateRequest,
    String? movieDetailsMessage,
  }) {
    return MoviesDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailsStateRequest:
          movieDetailsStateRequest ?? this.movieDetailsStateRequest,
      movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
    );
  }

  @override
  List<Object?> get props => [
        movieDetail,
        movieDetailsStateRequest,
        movieDetailsMessage,
      ];
}
