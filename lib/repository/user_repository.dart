import 'package:test_cloud_backend/api/user/user_api_provider.dart';
import 'package:test_cloud_backend/domain/model/user.dart';

class UserRepository {
  UserRepository(this._userApiProvider);

  final UserApiProvider _userApiProvider;

  Future<List<User>> getAllUsers() async {
    try {
      final response = await _userApiProvider.getUsers();

      if (response.code == 200) {
        // do mapping from data model to domain model
        // and return data
        return response.data;
      } else if (response.code == 400) {
        throw ('BAD REQUEST');
      } else if (response.code == 401) {
        throw ('Unauthorized: You are not logged in');
      } else if (response.code == 500) {
        throw ('Internal Server Error: Please try again later');
      } else {
        throw ('Any other error');
      }
    } catch (e) {
      throw ('DioError, when request havent reached server for some reasons');
    }
  }
}
