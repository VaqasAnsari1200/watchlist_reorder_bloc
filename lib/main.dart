import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'features/watchlist/presentation/bloc/watchlist_bloc.dart';
import 'features/watchlist/presentation/bloc/watchlist_event.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => WatchlistBloc()..add(LoadWatchlist()),
      child: const MyApp(),
    ),
  );
}