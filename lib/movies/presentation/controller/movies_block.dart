import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:movieapp/core/utils/state_request.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

import '../../domain/usecases/get_popular_movies_usecase.dart';
import '../../domain/usecases/get_top_rated_movies_usecase.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);

    on<GetTopRatedMoviesEvent>(_topRatedMovies);
  }

  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase.execute();

    result.fold(
      (l) => emit(state.copyWith(
        nowPlayingMoviesMessage: l.message,
        nowPlayingState: StateRequest.error,
      )),
      (r) => emit(state.copyWith(
        nowPlayingMovies: r,
        nowPlayingState: StateRequest.loaded,
      )),
    );
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase.execute();

    result.fold(
      (l) => emit(state.copyWith(
        popularMoviesMessage: l.message,
        popularState: StateRequest.error,
      )),
      (r) => emit(
        state.copyWith(
          popularMovies: r,
          popularState: StateRequest.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _topRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase.execute();

    result.fold(
        (l) => emit(state.copyWith(
              topRatedMoviesMessage: l.message,
              topRatedState: StateRequest.error,
            )),
        (r) => emit(state.copyWith(
              topRatedMovies: r,
              topRatedState: StateRequest.loaded,
            )));
  }
}
