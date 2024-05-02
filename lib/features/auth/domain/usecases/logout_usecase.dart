import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/auth/domain/repositories/login_rep.dart';

class LogoutUseCase implements UseCase<DataState, void> {
  final LoginRep _repository;

  LogoutUseCase(this._repository);

  @override
  Future<DataState> call({void param}) async {
    return _repository.logOut();
  }
}
