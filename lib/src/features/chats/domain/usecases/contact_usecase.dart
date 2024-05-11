import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/contact_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/repositories/chat_repository.dart';

class ContactUseCase implements UseCase<DataState<ContactEntity>, String?> {
  final ChatRepository _repository;

  ContactUseCase(this._repository);

  @override
  Future<DataState<ContactEntity>> call({String? param}) async {
    return _repository.getContact(query: param);
  }
}
