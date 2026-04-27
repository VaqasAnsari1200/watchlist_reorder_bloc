import '../../data/models/stock_model.dart';

abstract class WatchlistEvent {}

class LoadWatchlist extends WatchlistEvent {}

class ReplaceWatchlist extends WatchlistEvent {
  final List<Stock> stocks;

  ReplaceWatchlist(this.stocks);
}

class ReorderWatchlist extends WatchlistEvent {
  final int oldIndex;
  final int newIndex;

  ReorderWatchlist(this.oldIndex, this.newIndex);
}