import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/chat_messages_list_entity.dart';
import 'package:kindergarten_online/features/chats/domain/repositories/chat_repository.dart';

class MessagesUseCase
    implements UseCase<DataState<ChatMessagesListEntity>, String?> {
  final ChatRepository _repository;
  MessagesUseCase(this._repository);
  @override
  Future<DataState<ChatMessagesListEntity>> call({String? param}) async {
    return _repository.getMessages(id: param ?? "");
  }
}
