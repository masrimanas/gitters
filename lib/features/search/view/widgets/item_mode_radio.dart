import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gitters/features/search/bloc/search_bloc/search_bloc.dart';
import 'package:gitters/features/search/common/enums.dart';

class ItemModeRadio extends StatelessWidget {
  const ItemModeRadio({
    super.key,
    required SearchItemMode stateItemMode,
    required SearchItemMode itemMode,
  })  : _stateItemMode = stateItemMode,
        _itemMode = itemMode;

  final SearchItemMode _stateItemMode;
  final SearchItemMode _itemMode;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<SearchItemMode>(
            value: _itemMode,
            groupValue: _stateItemMode,
            onChanged: (SearchItemMode? value) {
              context.read<SearchBloc>().add(
                    SearchEventChanged(value!),
                  );
            },
          ),
          Text(_itemMode.title),
        ],
      ),
    );
  }
}
