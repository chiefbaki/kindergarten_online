import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/features/profile/data/dto/edit_profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/edit_profile_rep.dart';

class EditProfileUseCase implements UseCase<void, EditProfileDto> {
  final EditProfileRep _repository;
  const EditProfileUseCase(this._repository);

  @override
  Future<void> call({required EditProfileDto param}) async {
    await _repository.editProfile(entity: param);
  }
}
