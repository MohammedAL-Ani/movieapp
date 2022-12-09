import 'package:get_it/get_it.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movieapp/movies/data/repository/movies_repository.dart';
import 'package:movieapp/movies/domain/repository/base_movie_repository.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_block.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //Bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    //Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));

    //Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    //DataSource
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
