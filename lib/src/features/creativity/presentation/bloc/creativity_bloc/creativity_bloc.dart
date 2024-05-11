import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kindergarten_online/src/core/utils/failure/data_state.dart';
import 'package:kindergarten_online/src/features/creativity/domain/entities/creativity_list_entity.dart';
import 'package:kindergarten_online/src/features/creativity/domain/usecases/creativity_list_usecase.dart';
import 'package:kindergarten_online/src/features/creativity/domain/usecases/search_creativity_usecase.dart';

part 'creativity_event.dart';
part 'creativity_state.dart';
part 'creativity_bloc.freezed.dart';

class CreativityBloc extends Bloc<CreativityEvent, CreativityState> {
  final CreativityUseCase _useCase;
  final SearchCreativityUseCase _searchUseCase;
  CreativityBloc(this._useCase, this._searchUseCase) : super(const _Initial()) {
    _creativity();
    _searchCreativity();
  }

  void _creativity() {
    on<Creativity>((event, emit) async {
      emit(const CreativityState.loading());
      final dataState = await _useCase();
      if (dataState is DataSuccess) {
        emit(CreativityState.success(
            entity: dataState.data ?? const CreativityListEntity()));
      } else if (dataState is DataFailed) {
        emit(CreativityState.failure(error: dataState.message.toString()));
      }
    });
  }

  void _searchCreativity() {
    on<SearchCreativity>((event, emit) async {
      emit(const CreativityState.loading());
      final dataState = await _searchUseCase.call(param: event.query);
      if (dataState is DataSuccess && dataState.data!.results!.isNotEmpty) {
        emit(CreativityState.success(
            entity: dataState.data ?? const CreativityListEntity()));
      } else if (dataState is DataFailed) {
        emit(CreativityState.failure(error: dataState.message.toString()));
      }
    });
  }
}
