import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/res/create_group_res.entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/repositories/chat_repository.dart';

class CreateGroupUseCase
    implements UseCase<DataState<CreateGroupResEntity>, CreateGroupReqEntity> {
  final ChatRepository _repository;
  CreateGroupUseCase(this._repository);

  @override
  Future<DataState<CreateGroupResEntity>> call(
      {required CreateGroupReqEntity param}) async {
    return _repository.createGroup(entity: param);
  }
}
