import 'package:get_it/get_it.dart';
import 'package:gitters/features/search/data/datasource/remote_data_source.dart';
import 'package:gitters/features/search/data/repository/search_repository.dart';
import 'package:gitters/services/api_service.dart';

final locator = GetIt.instance;

void init() {
  // Bloc
  // locator.registerFactory(
  //   () => MovieDetailBloc(
  //     locator(),
  //   ),
  // );

  // data sources
  locator
    ..registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(
        locator(),
      ),
    )

    // repository
    ..registerLazySingleton<SearchRepositories>(
      () => SearchRepositoriesImpl(
        locator(),
      ),
    )

    // external
    ..registerLazySingleton(ApiService.new);
}
