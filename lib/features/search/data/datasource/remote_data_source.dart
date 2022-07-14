import 'package:gitters/services/api_service.dart';
import 'package:gitters/utils/exception.dart';
import 'package:gitters/utils/formatters.dart';

abstract class RemoteDataSource {
  const RemoteDataSource(
    this.client,
  );

  final ApiService client;

  Future<Map<String, dynamic>> searchIssueRemotely(String query, int page);
  Future<Map<String, dynamic>> searchRepositoriesRemotely(
    String query,
    int page,
  );
  Future<Map<String, dynamic>> searchGithubUserRemotely(String query, int page);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  RemoteDataSourceImpl(
    super.client,
  );

  String baseUrl = 'https://api.github.com/search/';

  @override
  Future<Map<String, dynamic>> searchIssueRemotely(
    String query,
    int page,
  ) async {
    final response = await client.dio.get<Map<String, dynamic>>(
      '${baseUrl}issues?q=$query&page=$page&per_page=10',
    );
    if (response.data != null) {
      final result = issueToList(response.data ?? {});
      return {
        'total': response.data?['total_count'],
        'result': result,
      };
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> searchRepositoriesRemotely(
    String query,
    int page,
  ) async {
    final response = await client.dio.get<Map<String, dynamic>>(
      '${baseUrl}repositories?q=$query&page=$page&per_page=10',
    );
    if (response.data != null) {
      final result = repoToList(response.data ?? {});
      return {
        'total': response.data?['total_count'],
        'result': result,
      };
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Map<String, dynamic>> searchGithubUserRemotely(
    String query,
    int page,
  ) async {
    final response = await client.dio.get<Map<String, dynamic>>(
      '${baseUrl}users?q=$query&page=$page&per_page=10',
    );
    if (response.data != null) {
      final result = userToList(response.data ?? {});
      return {
        'total': response.data?['total_count'],
        'result': result,
      };
    } else {
      throw ServerException();
    }
  }
}
