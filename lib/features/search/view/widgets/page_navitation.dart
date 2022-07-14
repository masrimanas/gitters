import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitters/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:gitters/features/search/bloc/search_mode_bloc/search_mode_bloc.dart';
import 'package:gitters/features/search/common/enums.dart';

class PagePagination extends StatelessWidget {
  const PagePagination({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final state = context.select((SearchBloc bloc) => bloc.state);
        const pages = 100;
        final isLastPage = state.page == pages;

        // final pagesIndex = List<int>.generate(pages, (i) => i);

        return SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                  text: ' ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    pageNavigation(
                      state: state,
                      context: context,
                      text: isLastPage ? 'Got to First |' : '<',
                      action: () {
                        if (state.page == 1) {
                          return;
                        } else {
                          if (isLastPage) {
                            context
                                .read<SearchBloc>()
                                .add(const SearchEventGetPageNumber(1));
                          }
                          context.read<SearchBloc>().add(
                                SearchEventFetched(
                                  isLastPage ? 1 : state.page - 1,
                                ),
                              );
                        }
                      },
                    ),
                    TextSpan(
                      text: '  ${state.page}',
                      style: const TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                    if (!isLastPage && pages >= 2)
                      pageNavigation(
                        state: state,
                        context: context,
                        text: '  ${state.page + 1}',
                        action: () {
                          context.read<SearchBloc>().add(
                                SearchEventFetched(
                                  state.page + 1,
                                ),
                              );
                        },
                      ),
                    if (!isLastPage && pages >= 3)
                      pageNavigation(
                        state: state,
                        context: context,
                        text: '  ${state.page + 2}',
                        action: () {
                          context.read<SearchBloc>().add(
                                SearchEventFetched(
                                  state.page + 2,
                                ),
                              );
                        },
                      ),
                    if (!isLastPage && pages > 3)
                      const TextSpan(
                        text: ' .....',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    if (!isLastPage && pages > 3)
                      pageNavigation(
                        state: state,
                        context: context,
                        text: '  $pages',
                        action: () {
                          context.read<SearchBloc>().add(
                                SearchEventFetched(
                                  pages,
                                ),
                              );
                        },
                      ),
                  ],
                ),
              ),

              // TextButton(
              //   onPressed: () {
              //     context.read<SearchBloc>().add(
              //           SearchEventFetched(
              //             state.keyword,
              //             pagesIndex.skip(state.page + 1).first,
              //           ),
              //         );
              //   },
              //   child: Text('${pagesIndex.skip(state.page + 1).first}'),
              // ),
            ],
          ),
        );
      },
    );
  }
}

TextSpan pageNavigation({
  required SearchState state,
  required BuildContext context,
  required VoidCallback action,
  required String text,
}) {
  return TextSpan(
    text: text,
    style: const TextStyle(fontSize: 25),
    recognizer: TapGestureRecognizer()..onTap = action,
  );
}
