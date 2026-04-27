import 'package:flutter_bloc/flutter_bloc.dart';
import 'watchlist_event.dart';
import 'watchlist_state.dart';
import '../../data/models/stock_model.dart';

class WatchlistBloc extends Bloc<WatchlistEvent, WatchlistState> {
  WatchlistBloc() : super(const WatchlistState(stocks: [])) {
    on<LoadWatchlist>(_onLoad);
    on<ReorderWatchlist>(_onReorder);
    on<ReplaceWatchlist>(_onReplace);

  }

  void _onLoad(LoadWatchlist event, Emitter<WatchlistState> emit) {
    final sampleData = [
      const Stock(symbol: "NIFTY", price: 180.5, change: 1.2),
      const Stock(symbol: "GOOGLE", price: 2750.3, change: -0.8),
      const Stock(symbol: "TESLA", price: 720.1, change: 2.5),
      const Stock(symbol: "AMAZON", price: 3300.0, change: -1.1),
    ];

    emit(state.copyWith(stocks: sampleData));
  }
  void _onReplace(
      ReplaceWatchlist event,
      Emitter<WatchlistState> emit,
      ) {
    emit(state.copyWith(stocks: event.stocks));
  }

  void _onReorder(
      ReorderWatchlist event, Emitter<WatchlistState> emit) {
    final updatedList = List<Stock>.from(state.stocks);

    int newIndex = event.newIndex;
    if (event.oldIndex < newIndex) {
      newIndex -= 1;
    }

    final item = updatedList.removeAt(event.oldIndex);
    updatedList.insert(newIndex, item);

    emit(state.copyWith(stocks: updatedList));
  }
}
