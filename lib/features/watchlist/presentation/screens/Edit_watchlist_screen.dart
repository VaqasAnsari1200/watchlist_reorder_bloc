import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_reorder_bloc/features/watchlist/presentation/widgets/custom_button.dart';
import '../bloc/watchlist_bloc.dart';
import '../bloc/watchlist_event.dart';
import '../../data/models/stock_model.dart';
class EditWatchlistScreen extends StatefulWidget {
  const EditWatchlistScreen({super.key});

  @override
  State<EditWatchlistScreen> createState() => _EditWatchlistScreenState();
}

class _EditWatchlistScreenState extends State<EditWatchlistScreen> {
  late List<Stock> tempList;

  @override
  void initState() {
    super.initState();
    final state = context.read<WatchlistBloc>().state;
    tempList = List.from(state.stocks);
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) newIndex -= 1;
      final item = tempList.removeAt(oldIndex);
      tempList.insert(newIndex, item);
    });
  }

  void _onSave() {
    context.read<WatchlistBloc>().add(
      ReplaceWatchlist(tempList),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Watchlist")),
      body: Column(
        children: [
          Expanded(
            child: ReorderableListView.builder(
              itemCount: tempList.length,
              onReorder: _onReorder,
              itemBuilder: (context, index) {
                final stock = tempList[index];

                return ListTile(
                  key: ValueKey(stock.symbol),
                  leading: const Icon(Icons.drag_handle),
                  title: Text(stock.symbol),
                  trailing: const Icon(Icons.delete),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: double.infinity,
              child: CustomButton(
                  borderRadius: 10,
                  title: "Save Watchlist",
                  onTap: _onSave
              ),
            ),
          ),
        ],
      ),
    );
  }
}

