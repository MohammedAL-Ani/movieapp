import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movieapp/core/error/failure.dart';
import 'package:movieapp/core/usecase/base_usecase.dart';
import 'package:movieapp/movies/domain/entities/movie_detail.dart';
import 'package:movieapp/movies/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUseCase
    extends BaseUseCase<MovieDetail, MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMoviesDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;
  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
