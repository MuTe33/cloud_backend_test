import 'package:flutter/cupertino.dart';
import 'package:test_cloud_backend/domain/model/user.dart';
import 'package:test_cloud_backend/domain/use_case/get_all_user_use_case.dart';

class TestPageViewModel extends ChangeNotifier {
  TestPageViewModel(this._getAllUserUseCase);

  final GetAllUserUseCase _getAllUserUseCase;

  List<User> allUsers;

  Future<void> onInit() async {
    allUsers = await _getAllUserUseCase.execute();
    notifyListeners();
  }
}
