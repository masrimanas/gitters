import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitters/features/search/data/models/issue.dart';
import 'package:gitters/features/search/data/models/repositories.dart';
import 'package:gitters/features/search/search.dart';

part 'search_item.freezed.dart';

@freezed
class SearchItem with _$SearchItem {
  factory SearchItem.repositories(RepositoriesModel repositories) =
      Repositories;
  factory SearchItem.users(GithubUserModel user) = Users;
  factory SearchItem.issues(IssueModel issues) = Issues;
}
