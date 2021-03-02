import 'package:dio/dio.dart' as dio;
import 'package:get_it/get_it.dart';
import 'package:test_cloud_backend/domain/use_case/get_all_user_use_case.dart';
import 'package:test_cloud_backend/feature/test_page_view_model.dart';
import 'package:test_cloud_backend/repository/user_repository.dart';

GetIt locator = GetIt.instance;
GetIt _l = locator;

void initSyncDependencies() {
  _initNetworking();
  _initServices();
  _initRepositories();
  _initViewModels();
  _initUseCases();
}

void _initNetworking() async {
  final dioInstance = dio.Dio(
    dio.BaseOptions(baseUrl: "https://gorest.co.in/public-api/"),
  );

  _l.registerSingleton(dioInstance);
}

void _initServices() {}

void _initRepositories() {
  _l.registerFactory(() => UserRepository(_l.get()));
}

void _initViewModels() {
  _l.registerFactory(() => TestPageViewModel(_l.get()));
}

void _initUseCases() {
  _l.registerLazySingleton(() => GetAllUserUseCase(_l.get()));
}
