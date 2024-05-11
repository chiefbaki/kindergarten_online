import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/features/profile/domain/entities/edit_profile_entity.dart';
import 'package:kindergarten_online/src/features/profile/domain/repositories/edit_profile_rep.dart';

class EditProfileUseCase implements UseCase<void, EditProfileEntity> {
  final EditProfileRep _repository;
  const EditProfileUseCase(this._repository);

  @override
  Future<void> call({required EditProfileEntity param}) async {
    await _repository.editProfile(entity: param);
  }
}
