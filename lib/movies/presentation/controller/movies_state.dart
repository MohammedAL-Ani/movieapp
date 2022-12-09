import 'package:equatable/equatable.dart';

import '../../../core/utils/state_request.dart';
import '../../domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final StateRequest nowPlayingState;
  final String nowPlayingMoviesMessage;
  final List<Movie> popularMovies;
  final StateRequest popularState;
  final String popularMoviesMessage;
  final List<Movie> topRatedMovies;
  final StateRequest topRatedState;
  final String topRatedMoviesMessage;

  const MoviesState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = StateRequest.loading,
    this.nowPlayingMoviesMessage = "",
    this.popularMovies = const [],
    this.popularState = StateRequest.loading,
    this.popularMoviesMessage = "",
    this.topRatedMovies = const [],
    this.topRatedState = StateRequest.loading,
    this.topRatedMoviesMessage = "",
  });

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    StateRequest? nowPlayingState,
    String? nowPlayingMoviesMessage,
    List<Movie>? popularMovies,
    StateRequest? popularState,
    String? popularMoviesMessage,
    List<Movie>? topRatedMovies,
    StateRequest? topRatedState,
    String? topRatedMoviesMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMoviesMessage:
          nowPlayingMoviesMessage ?? this.nowPlayingMoviesMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMoviesMessage:
          topRatedMoviesMessage ?? this.topRatedMoviesMessage,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMoviesMessage,
        popularMovies,
        popularState,
        popularMoviesMessage,
        topRatedMovies,
        topRatedState,
        topRatedMoviesMessage,
      ];
}
