import 'package:kindergarten_online/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/features/chats/domain/entities/contact_entities.dart';

abstract interface class ContactRepository {
  Future<DataState<ContactEntity>> getContact();
}
