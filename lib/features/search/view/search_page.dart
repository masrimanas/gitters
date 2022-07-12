import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitters/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:gitters/features/search/bloc/search_mode_bloc/search_mode_bloc.dart';
import 'package:gitters/injection.dart' as di;
import 'package:gitters/l10n/l10n.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchBloc(di.locator()),
        ),
        BlocProvider(
          create: (context) => SearchModeBloc(),
        ),
      ],
      child: const SearchView(),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const Center(child: SearchText()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              context
                  .read<SearchBloc>()
                  .add(const SearchEvent.fetched('flutter'));
            },
            child: const Text('get'),
          ),
        ],
      ),
    );
  }
}

class SearchText extends StatelessWidget {
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SearchBloc>().state;
    final theme = Theme.of(context);
    // final count = context.select((SearchBloc cubit) => cubit.state);
    // return Text('$count', style: theme.textTheme.headline1);
    return Column(
      children: [
        Text(state.total_items.toString()),
        Text('items: ${state.items.length.toString()}'),
        // Text('items: ${state.items.first.toString()}'),
        Text(state.mode.name),
        Text(state.status.name),
      ],
    );
  }
}
