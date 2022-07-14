import 'package:freezed_annotation/freezed_annotation.dart';

part 'repositories.freezed.dart';
part 'repositories.g.dart';

@freezed
class RepositoriesModel with _$RepositoriesModel {
  factory RepositoriesModel({
    required String name,
    required DateTime created_at,
    required int forks_count,
    required int stargazers_count,
    required int watchers_count,
    required Map<String, dynamic> owner,
  }) = _RepositoriesModel;

  factory RepositoriesModel.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesModelFromJson(json);
}
