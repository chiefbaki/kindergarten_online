import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/req/create_group_req_entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/entities/res/create_group_res.entity.dart';
import 'package:kindergarten_online/src/features/chats/domain/usecases/create_group_usecase.dart';

part 'create_group_event.dart';
part 'create_group_state.dart';
part 'create_group_bloc.freezed.dart';

class CreateGroupBloc extends Bloc<CreateGroupEvent, CreateGroupState> {
  final CreateGroupUseCase _useCase;
  CreateGroupBloc(this._useCase) : super(const _Initial()) {
    _createGroup();
  }

  void _createGroup() {
    on<CreateGroupEvent>((event, emit) async {
      emit(const _Loading());
      final dataState = await _useCase(param: event.entity);
      if (dataState is DataSuccess) {
        emit(_Success(entity: dataState.data ?? const CreateGroupResEntity()));
      } else if (dataState is DataSuccess) {
        emit(_Failure(error: dataState.message ?? ""));
      }
    });
  }
}
