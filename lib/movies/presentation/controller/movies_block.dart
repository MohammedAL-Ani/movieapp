import 'package:bloc/bloc.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movieapp/movies/data/repository/movies_repository.dart';
import 'package:movieapp/movies/domain/repository/base_movie_repository.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      BaseMovieRemoteDataSource baseMovieRemoteDataSource =
          MovieRemoteDataSource();
      BaseMoviesRepository baseMoviesRepository =
          MoviesRepository(baseMovieRemoteDataSource);
      final result =
          await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
    });
  }
}
