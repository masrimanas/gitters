import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class IssueModel with _$IssueModel {
  factory IssueModel({
    required String title,
    required DateTime updated_at,
    required String state,
  }) = _IssueModel;

  factory IssueModel.fromJson(Map<String, dynamic> json) =>
      _$IssueModelFromJson(json);
}


// List<Issue> issueToList(Map<String, dynamic> data) {
//   return List<Issue>.from(
//     (data['items'] as List).map(
//       (x) => Issue.fromMap(x as Map<String, dynamic>),
//     ),
//   );
// }
