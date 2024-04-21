part of 'delete_card_bloc.dart';

@freezed
class DeleteCardEvent with _$DeleteCardEvent {
  const factory DeleteCardEvent.delete(
      {required int productId, required int quantity}) = _Delete;
}
