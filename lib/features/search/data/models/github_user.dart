import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_user.freezed.dart';
part 'github_user.g.dart';

@freezed
class GithubUserModel with _$GithubUserModel {
  factory GithubUserModel({
    required String login,
    required String avatar_url,
  }) = _GithubUserModel;

  factory GithubUserModel.fromJson(Map<String, dynamic> json) =>
      _$GithubUserModelFromJson(json);
}
