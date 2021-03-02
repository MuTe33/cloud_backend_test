import 'package:test_cloud_backend/domain/model/user.dart';
import 'package:test_cloud_backend/repository/user_repository.dart';

class GetAllUserUseCase {
  GetAllUserUseCase(this._userRepository);

  final UserRepository _userRepository;

  Future<List<User>> execute() async {
    // await _userRepository.getAllUsers();
  }
}
