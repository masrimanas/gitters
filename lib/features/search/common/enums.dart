enum SearchModeOption {
  lazyLoaded,
  pagination,
}

enum SearchStatus { initial, loading, success, failure }

enum SearchItemMode { users, repo, issue }

extension CapitalFirst on Enum {
  String get title {
    final data = name.split('');
    return '${data[0].toUpperCase()}${data.skip(1).join().toLowerCase()}';
  }
}
