import 'package:gitters/features/search/data/models/github_user.dart';
import 'package:gitters/features/search/data/models/issue.dart';
import 'package:gitters/features/search/data/models/repositories.dart';

List<GithubUserModel> userToList(Map<String, dynamic> data) {
  return List<GithubUserModel>.from(
    (data['items'] as List).map(
      (x) => GithubUserModel.fromJson(x as Map<String, dynamic>),
    ),
  );
}

List<RepositoriesModel> repoToList(Map<String, dynamic> data) {
  return List<RepositoriesModel>.from(
    (data['items'] as List).map(
      (x) => RepositoriesModel.fromJson(x as Map<String, dynamic>),
    ),
  );
}

List<IssueModel> issueToList(Map<String, dynamic> data) {
  return List<IssueModel>.from(
    (data['items'] as List).map(
      (x) => IssueModel.fromJson(x as Map<String, dynamic>),
    ),
  );
}
