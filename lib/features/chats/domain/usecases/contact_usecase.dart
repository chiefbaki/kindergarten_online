import 'package:kindergarten_online/core/usecase/usecase.dart';
import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entities.dart';
import 'package:kindergarten_online/features/chats/domain/repositories/contact_repository.dart';

class ContactUseCase implements UseCase<DataState<ContactEntity>, void> {
  final ContactRepository _repository;

  ContactUseCase(this._repository);

  @override
  Future<DataState<ContactEntity>> call({void param}) async {
    return _repository.getContact();
  }
}
