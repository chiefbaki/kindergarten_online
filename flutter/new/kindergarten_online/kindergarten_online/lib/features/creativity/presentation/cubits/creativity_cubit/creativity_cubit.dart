import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/core/utils/resources/data_state.dart';
import 'package:kindergarten_online/features/creativity/domain/entities/creativity_list_entity.dart';
import 'package:kindergarten_online/features/creativity/domain/usecases/creativity_list_usecase.dart';
import 'package:kindergarten_online/features/creativity/domain/usecases/search_creativity_usecase.dart';

part 'creativity_state.dart';
part 'creativity_cubit.freezed.dart';

class CreativityCubit extends Cubit<CreativityState> {
  final CreativityUseCase _useCase;
  final SearchCreativityUseCase _searchUseCase;

  CreativityCubit(this._useCase, this._searchUseCase)
      : super(const CreativityState.initial());

  Future<void> creativity() async {
    emit(const CreativityState.loading());
    final dataState = await _useCase();
    if (dataState is DataSuccess) {
      emit(CreativityState.success(
          entity: dataState.data ?? const CreativityListEntity()));
    } else if (dataState is DataFailed) {
      emit(CreativityState.failure(error: dataState.message.toString()));
    }
  }

  Future<void> searchCreativity({required String query}) async {
    emit(const CreativityState.loading());
    final dataState = await _searchUseCase.call(param: query);
    if (dataState is DataSuccess && dataState.data!.results!.isNotEmpty) {
      emit(CreativityState.success(
          entity: dataState.data ?? const CreativityListEntity()));
    } else if (dataState is DataFailed) {
      emit(CreativityState.failure(error: dataState.message.toString()));
    }
  }
}
