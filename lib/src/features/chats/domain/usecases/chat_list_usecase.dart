import 'package:kindergarten_online/src/core/usecase/usecase.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/chat_list_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/repositories/chat_repository.dart';

class ChatListUseCase
    implements UseCase<DataState<List<ChatListEntity>>, String?> {
  final ChatRepository _repository;

  ChatListUseCase(this._repository);
  @override
  Future<DataState<List<ChatListEntity>>> call({String? param}) async {
    return _repository.getChatList(query: param);
  }
}
