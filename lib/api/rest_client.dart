import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_cloud_backend/domain/model/user.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("users")
  Future<List<User>> getUsers();
}
