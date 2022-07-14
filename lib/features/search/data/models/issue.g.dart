// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueModel _$$_IssueModelFromJson(Map<String, dynamic> json) =>
    _$_IssueModel(
      title: json['title'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      state: json['state'] as String,
      user: json['user'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_IssueModelToJson(_$_IssueModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'updated_at': instance.updated_at.toIso8601String(),
      'state': instance.state,
      'user': instance.user,
    };
