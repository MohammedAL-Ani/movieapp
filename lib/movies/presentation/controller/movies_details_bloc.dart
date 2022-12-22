import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/core/utils/state_request.dart';
import 'package:movieapp/movies/domain/entities/movie_detail.dart';
import 'package:movieapp/movies/domain/usecases/get_movie_details_usecase.dart';

part 'movies_details_event.dart';
part 'movies_details_state.dart';

class MoviesDetailsBloc extends Bloc<MoviesDetailsEvent, MoviesDetailsState> {
  MoviesDetailsBloc(this.getMovieDetailsUseCase)
      : super(const MoviesDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MoviesDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));

    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsMessage: l.message,
        movieDetailsStateRequest: StateRequest.error,
      )),
      (r) => emit(
        state.copyWith(
          movieDetail: r,
          movieDetailsStateRequest: StateRequest.loaded,
        ),
      ),
    );
  }
}
