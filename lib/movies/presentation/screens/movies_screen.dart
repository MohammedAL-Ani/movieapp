import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movies/presentation/controller/movies_block.dart';
import 'package:movieapp/movies/presentation/controller/movies_event.dart';
import 'package:movieapp/movies/presentation/controller/movies_state.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) {
      return MoviesBloc()..add(GetNowPlayingMoviesEvent());
    }, child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (BuildContext context, MoviesState state) {
      return const Scaffold();
    }));
  }
}
