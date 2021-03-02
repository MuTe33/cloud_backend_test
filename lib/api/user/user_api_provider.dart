import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_cloud_backend/domain/model/user_response_data.dart';

part 'user_api_provider.g.dart';

@RestApi()
abstract class UserApiProvider {
  factory UserApiProvider(Dio dio, {String baseUrl}) = _UserApiProvider;

  @GET("users")
  Future<UserResponseData> getUsers();

  //DELETE

  //PUT

  //POST
}
