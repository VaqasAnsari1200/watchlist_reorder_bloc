import 'package:equatable/equatable.dart';

class Stock extends Equatable {
  final String symbol;
  final double price;
  final double change;

  const Stock({
    required this.symbol,
    required this.price,
    required this.change,
  });

  @override
  List<Object?> get props => [symbol, price, change];

  Stock copyWith({
    String? symbol,
    double? price,
    double? change,
  }) {
    return Stock(
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      change: change ?? this.change,
    );
  }
}