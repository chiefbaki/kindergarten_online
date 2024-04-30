import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/features/chats/domain/repositories/chat_repository.dart';

class ContactUseCase implements UseCase<DataState<ContactEntity>, void> {
  final ChatRepository _repository;

  ContactUseCase(this._repository);

  @override
  Future<DataState<ContactEntity>> call({void param}) async {
    return _repository.getContact();
  }
}
