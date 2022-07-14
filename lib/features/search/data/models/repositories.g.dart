// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepositoriesModel _$$_RepositoriesModelFromJson(Map<String, dynamic> json) =>
    _$_RepositoriesModel(
      name: json['name'] as String,
      created_at: DateTime.parse(json['created_at'] as String),
      forks_count: json['forks_count'] as int,
      stargazers_count: json['stargazers_count'] as int,
      watchers_count: json['watchers_count'] as int,
      owner: json['owner'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_RepositoriesModelToJson(
        _$_RepositoriesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'created_at': instance.created_at.toIso8601String(),
      'forks_count': instance.forks_count,
      'stargazers_count': instance.stargazers_count,
      'watchers_count': instance.watchers_count,
      'owner': instance.owner,
    };
