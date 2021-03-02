import 'package:test_cloud_backend/api/rest_client.dart';
import 'package:test_cloud_backend/domain/model/user.dart';

class UserRepository {
  UserRepository(this._restClient);

  final RestClient _restClient;
}

Future<List<User>> getAllUsers() {}
