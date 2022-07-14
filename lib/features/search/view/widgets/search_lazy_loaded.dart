import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitters/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:gitters/features/search/data/models/search_item.dart';
import 'package:gitters/features/search/view/widgets/search_item.dart';

class LazyLoadedList extends StatefulWidget {
  const LazyLoadedList({
    super.key,
    required this.items,
  });
  final List<SearchItem> items;

  @override
  State<LazyLoadedList> createState() => _LazyLoadedListState();
}

class _LazyLoadedListState extends State<LazyLoadedList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        controller: _scrollController,
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final data = widget.items;
          return index >= data.length
              ? BottomLoader()
              : data[index].map(
                  users: (value) => (data.isEmpty)
                      ? const Center(
                          child: Text('No Result'),
                        )
                      : SearchItemView(item: value),
                  issues: (value) => (data.isEmpty)
                      ? const Center(
                          child: Text('No Result'),
                        )
                      : SearchItemView(item: value),
                  repositories: (value) => (data.isEmpty)
                      ? const Center(
                          child: Text('No Result'),
                        )
                      : SearchItemView(item: value),
                );
        },
      ),
    );
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<SearchBloc>().add(const SearchEventGetItemLazy());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}
