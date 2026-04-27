import 'package:equatable/equatable.dart';
import '../../data/models/stock_model.dart';

class WatchlistState extends Equatable {
  final List<Stock> stocks;

  const WatchlistState({required this.stocks});

  @override
  List<Object?> get props => [stocks];

  WatchlistState copyWith({
    List<Stock>? stocks,
  }) {
    return WatchlistState(
      stocks: stocks ?? this.stocks,
    );
  }
}