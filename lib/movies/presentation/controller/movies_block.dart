import 'package:bloc/bloc.dart';
import 'package:movieapp/core/utils/state_request.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();

      result.fold(
          (l) => emit(MoviesState(
                nowPlayingMoviesMessage: l.message,
                nowPlayingState: StateRequest.error,
              )),
          (r) => emit(MoviesState(
                nowPlayingMovies: r,
                nowPlayingState: StateRequest.loaded,
              )));
    });
  }
}
