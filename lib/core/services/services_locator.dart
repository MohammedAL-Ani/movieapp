import 'package:get_it/get_it.dart';
import 'package:movieapp/movies/data/datasource/movie_remote_datasource.dart';
import 'package:movieapp/movies/data/repository/movies_repository.dart';
import 'package:movieapp/movies/domain/repository/base_movie_repository.dart';
import 'package:movieapp/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movieapp/movies/domain/usecases/get_recommendation_usecase.dart';
import 'package:movieapp/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_block.dart';
import 'package:movieapp/movies/presentation/controller/movies_details_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    //Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MoviesDetailsBloc(sl(), sl()));

    //Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));

    //Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    //DataSource
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
