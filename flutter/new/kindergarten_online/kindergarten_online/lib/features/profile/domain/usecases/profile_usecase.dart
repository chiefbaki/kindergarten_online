import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/profile/data/dto/profile_dto.dart';
import 'package:kindergarten_online/features/profile/domain/repositories/profile_rep.dart';

class ProfileUseCase implements UseCase<DataState<ProfileDto>, ProfileDto> {
  final ProfileRep _repository;
  ProfileUseCase(this._repository);

  @override
  Future<DataState<ProfileDto>> call({void param}) async {
    return await _repository.getProfile();
  }
}
