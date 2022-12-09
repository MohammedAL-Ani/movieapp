import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movieapp/movies/presentation/controller/movies_block.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

import '../../../core/services/services_locator.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(sl<MoviesBloc>().hashCode);
    return BlocProvider(create: (BuildContext context) {
      return MoviesBloc(sl())..add(GetNowPlayingMoviesEvent());
    }, child: BlocBuilder<MoviesBloc, MoviesState>(builder: (context, state) {
      return const Scaffold();
    }));
  }
}
