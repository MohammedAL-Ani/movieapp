import 'package:equatable/equatable.dart';

import '../../../core/utils/state_request.dart';
import '../../domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final StateRequest nowPlayingState;
  final String nowPlayingMoviesMessage;

  const MoviesState(
      {this.nowPlayingMovies = const [],
      this.nowPlayingState = StateRequest.loading,
      this.nowPlayingMoviesMessage = ""});

  @override
  List<Object> get props =>
      [nowPlayingMovies, nowPlayingState, nowPlayingMoviesMessage];
}