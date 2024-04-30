import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/profile/domain/entities/profile_entity.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/profile_rep.dart';

class ProfileUseCase implements UseCase<DataState<ProfileEntity>, ProfileEntity> {
  final ProfileRep _repository;
  ProfileUseCase(this._repository);

  @override
  Future<DataState<ProfileEntity>> call({void param}) async {
    return await _repository.getProfile();
  }
}
