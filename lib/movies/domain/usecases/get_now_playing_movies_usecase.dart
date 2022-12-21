import 'package:dartz/dartz.dart';
import 'package:movieapp/core/usecase/base_usecase.dart';
import 'package:movieapp/movies/domain/repository/base_movie_repository.dart';
import 'package:movieapp/movies/domain/entities/movie.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase
    extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
