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

  const MoviesState(
      {this.nowPlayingMovies = const [],
      this.nowPlayingState = StateRequest.loading,
      this.nowPlayingMoviesMessage = "",
      this.popularMovies = const [],
      this.popularState = StateRequest.loading,
      this.popularMoviesMessage = ""});

  MoviesState copyWith({
    List<Movie>? nowPlayingMovies,
    StateRequest? nowPlayingState,
    String? nowPlayingMoviesMessage,
    List<Movie>? popularMovies,
    StateRequest? popularState,
    String? popularMoviesMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMoviesMessage:
          nowPlayingMoviesMessage ?? this.nowPlayingMoviesMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularState: popularState ?? this.popularState,
      popularMoviesMessage: popularMoviesMessage ?? this.popularMoviesMessage,
    );
  }

  @override
  List<Object> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMoviesMessage,
        popularMovies,
        popularState,
        popularMoviesMessage
      ];
}
