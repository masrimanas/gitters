import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gitters/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:gitters/features/search/bloc/search_mode_bloc/search_mode_bloc.dart';
import 'package:gitters/features/search/common/enums.dart';
import 'package:gitters/features/search/data/models/search_item.dart';
import 'package:gitters/features/search/view/widgets/custom_button.dart';
import 'package:gitters/features/search/view/widgets/item_mode_radio.dart';
import 'package:gitters/features/search/view/widgets/page_navitation.dart';
import 'package:gitters/features/search/view/widgets/search_lazy_loaded.dart';
import 'package:gitters/features/search/view/widgets/search_pagination.dart';
import 'package:gitters/injection.dart' as di;

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

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    final state = context.watch<SearchBloc>().state;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: true,
                title: TextField(
                  onChanged: (query) {
                    context.read<SearchBloc>().add(SearchEventNewQuery(query));
                    context.read<SearchBloc>().add(const SearchEventFetched(1));
                  },
                  decoration: const InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                  textInputAction: TextInputAction.search,
                ),
                bottom: AppBar(
                  toolbarHeight: 100,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Builder(
                          builder: (context) {
                            final _stateItemMode = context
                                .select((SearchBloc bloc) => bloc.state.mode);
                            return Row(
                              // mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ItemModeRadio(
                                  stateItemMode: _stateItemMode,
                                  itemMode: SearchItemMode.users,
                                ),
                                ItemModeRadio(
                                  stateItemMode: _stateItemMode,
                                  itemMode: SearchItemMode.issue,
                                ),
                                ItemModeRadio(
                                  stateItemMode: _stateItemMode,
                                  itemMode: SearchItemMode.repo,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: Builder(
                          builder: (context) {
                            final state =
                                context.watch<SearchModeBloc>().state.map(
                                      mode: (value) => value,
                                    );
                            return Row(
                              children: [
                                CustomButton(
                                  color: (state.mode ==
                                          SearchModeOption.lazyLoaded)
                                      ? Colors.grey
                                      : Colors.blue,
                                  title: 'Lazy Loading',
                                  action: () {
                                    context.read<SearchModeBloc>().add(
                                          const SearchModeEventChangeMode(
                                            SearchModeOption.lazyLoaded,
                                          ),
                                        );
                                  },
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                CustomButton(
                                  color: (state.mode ==
                                          SearchModeOption.pagination)
                                      ? Colors.grey
                                      : Colors.blue,
                                  title: 'With Index',
                                  action: () {
                                    context.read<SearchModeBloc>().add(
                                          const SearchModeEventChangeMode(
                                            SearchModeOption.pagination,
                                          ),
                                        );
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Builder(
            builder: (context) {
              final state = context.select(
                (SearchBloc bloc) => bloc.state,
              );
              final stateMode = context.watch<SearchModeBloc>().state;
              switch (state.status) {
                case SearchStatus.initial:
                  return const SearchResult();
                case SearchStatus.loading:
                  return const Center(child: CircularProgressIndicator());
                case SearchStatus.success:
                  return Column(
                    children: [
                      const Expanded(
                        flex: 90,
                        child: SearchResult(),
                      ),
                      if (stateMode.mode == SearchModeOption.pagination)
                        const PagePagination()
                    ],
                  );

                case SearchStatus.failure:
                  return const Center(child: Text('Failed to load!'));
              }
            },
          ),
        ),
      ),
    );
  }
}

class SearchResult extends StatefulWidget {
  const SearchResult({
    super.key,
  });

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  final List<SearchItem> initialValue = [];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SearchBloc>().state;
    final stateMode = context.watch<SearchModeBloc>().state;
    final items = (state.items.isNotEmpty) ? state.items : initialValue;
    final items_lazy =
        (state.items_lazy.isNotEmpty) ? state.items : initialValue;

    return stateMode.map(
      mode: (value) {
        return PageView(
          onPageChanged: (index) {
            late SearchModeOption mode;
            switch (index) {
              case 0:
                setState(() {
                  mode = SearchModeOption.lazyLoaded;
                });
                break;
              case 1:
                setState(() {
                  mode = SearchModeOption.pagination;
                });
                break;
            }
            context.read<SearchModeBloc>().add(
                  SearchModeEventChangeMode(mode),
                );
            log(index.toString());
          },
          children: [
            if (value.mode == SearchModeOption.lazyLoaded)
              LazyLoadedList(
                items: items_lazy,
              )
            else
              PaginationList(
                items: items,
              ),
            if (value.mode == SearchModeOption.pagination)
              PaginationList(
                items: items,
              )
            else
              LazyLoadedList(
                items: items_lazy,
              ),
          ],
        );
      },
    );
  }
}
