import 'package:dartz/dartz.dart';
import 'package:gitters/features/search/data/datasource/remote_data_source.dart';
import 'package:gitters/utils/exception.dart';
import 'package:gitters/utils/failure.dart';

abstract class SearchRepositories {
  Future<Either<Failure, Map<String, dynamic>>> searchIssue(
      String query, int page,);
  Future<Either<Failure, Map<String, dynamic>>> searchRepositories(
    String query,
    int page,
  );
  Future<Either<Failure, Map<String, dynamic>>> searchGithubUser(
    String query,
    int page,
  );
}

class SearchRepositoriesImpl extends SearchRepositories {
  SearchRepositoriesImpl(this.remoteDataSource);

  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, Map<String, dynamic>>> searchGithubUser(
    String query,
    int page,
  ) async {
    try {
      final result =
          await remoteDataSource.searchGithubUserRemotely(query, page);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> searchIssue(
    String query,
    int page,
  ) async {
    try {
      final result = await remoteDataSource.searchIssueRemotely(query, page);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> searchRepositories(
    String query,
    int page,
  ) async {
    try {
      final result =
          await remoteDataSource.searchRepositoriesRemotely(query, page);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
